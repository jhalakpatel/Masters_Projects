/* vcreate.c - vcreate */

#include <xinu.h>

//local	int newpid();

#define	roundew(x)	( (x+3)& ~0x3)

/*----------------------------------------------------------------------------
 *  vcreate  -  Creates a new XINU process. The process's heap will be private
 *  and reside in virtual memory.
 *----------------------------------------------------------------------------
 */
pid32	vcreate(
	  void		*funcaddr,	/* Address of the function	*/
	  uint32	ssize,		/* Stack size in words		*/
	  uint32	hsize,		/* Heap size in num of pages */
	  pri16		priority,	/* Process priority > 0		*/
	  char		*name,		/* Name (for debugging)		*/
	  uint32	nargs,		/* Number of args that follow	*/
	            ...
    )
{
	/* LAB5TODO */
    intmask mask;
    pid32 pid;
    bsd_t bsid;
    uint32 remaining_hsize = hsize;
    uint32 heap_allocate;
    struct procent  *prptr;

    /* disable interrupts */
    mask = disable();
  
    kprintf("In Vcreate function\n");

    /* check if the total vcreate process are limited to maximum of 8 */
    if (vprcount >= 8) {
        restore(mask);
        return SYSERR;
    }

    /* if the already 8 vcreate done, need to wait till all the vcreate finishes */
    if (vcreate_good == FALSE) {
        restore(mask);
        return SYSERR;
    }

    if ((hsize < 1) || (hsize > 8 * MAX_PAGES_PER_BS)) {
        restore(mask);
        return SYSERR;
    }

    kprintf("create : basic function call\n");

	uint32		savsp, *pushsp;
	int32		i;
	uint32		*a;		/* Points to list of args	*/
	uint32		*saddr;		/* Stack address		*/

	mask = disable();
	if (ssize < MINSTK)
		ssize = MINSTK;
	ssize = (uint32) roundew(ssize);
	if (((saddr = (uint32 *)getstk(ssize)) ==
	    (uint32 *)SYSERR ) ||
	    (pid=newpid()) == SYSERR || priority < 1 ) {
		restore(mask);
		return SYSERR;
	}

	prcount++;
	prptr = &proctab[pid];

	/* Initialize process table entry for new process */
	prptr->prstate = PR_SUSP;	/* Initial state is suspended	*/
	prptr->prprio = priority;
	prptr->prstkbase = (char *)saddr;
	prptr->prstklen = ssize;
	prptr->prname[PNMLEN-1] = NULLCH;
	for (i=0 ; i<PNMLEN-1 && (prptr->prname[i]=name[i])!=NULLCH; i++)
		;
	prptr->prsem = -1;
	prptr->prparent = (pid32)getpid();
	prptr->prhasmsg = FALSE;

	/* Set up stdin, stdout, and stderr descriptors for the shell	*/
	prptr->prdesc[0] = CONSOLE;
	prptr->prdesc[1] = CONSOLE;
	prptr->prdesc[2] = CONSOLE;

	/* Initialize stack as if the process was called		*/

	*saddr = STACKMAGIC;
	savsp = (uint32)saddr;

	/* Push arguments */
	a = (uint32 *)(&nargs + 1);	/* Start of args		*/
	a += nargs -1;			/* Last argument		*/
	for ( ; nargs > 0 ; nargs--)	/* Machine dependent; copy args	*/
		*--saddr = *a--;	/*   onto created process' stack*/
	*--saddr = (long)INITRET;	/* Push on return address	*/

	/* The following entries on the stack must match what ctxsw	*/
	/*   expects a saved process state to contain: ret address,	*/
	/*   ebp, interrupt mask, flags, registerss, and an old SP	*/

	*--saddr = (long)funcaddr;	/* Make the stack look like it's*/
					/*   half-way through a call to	*/
					/*   ctxsw that "returns" to the*/
					/*   new process		*/
	*--saddr = savsp;		/* This will be register ebp	*/
					/*   for process exit		*/
	savsp = (uint32) saddr;		/* Start of frame for ctxsw	*/
	*--saddr = 0x00000200;		/* New process runs with	*/
					/*   interrupts enabled		*/

	/* Basically, the following emulates an x86 "pushal" instruction*/

	*--saddr = 0;			/* %eax */
	*--saddr = 0;			/* %ecx */
	*--saddr = 0;			/* %edx */
	*--saddr = 0;			/* %ebx */
	*--saddr = 0;			/* %esp; value filled in below	*/
	pushsp = saddr;			/* Remember this location	*/
	*--saddr = savsp;		/* %ebp (while finishing ctxsw)	*/
	*--saddr = 0;			/* %esi */
	*--saddr = 0;			/* %edi */
	*pushsp = (unsigned long) (prptr->prstkptr = (char *)saddr);

    /* create a page directory for each process */
    proctab[pid].prpdptr = pd_allocate();

    kprintf("Create() : Success with process name : %s, process directory address : %x, vpn : %d\n", proctab[pid].prname, proctab[pid].prpdptr, VirtualAddress_To_VirtualPageNumber(proctab[pid].prpdptr));

    if (proctab[pid].prpdptr == NULL) {
        proctab[pid].prstate = PR_FREE;
        kprintf("vcreate : could not allocate page directory for process\n");
        return SYSERR;
    }

    /* create a simple XINU process */
    //pid = create(funcaddr, ssize, priority, name, nargs, args);

    kprintf("Vcreate : normal process created\n");

    /* store the heap size allocated to the process */
    proctab[pid].vhsize = hsize;

    prptr = &proctab[pid];

    /* allocate multiple backing stores based on the heap size for a given process*/
    while(remaining_hsize > 0) {
       
        if (remaining_hsize > MAX_PAGES_PER_BS) {
            heap_allocate = MAX_PAGES_PER_BS;
        } else {
            heap_allocate = remaining_hsize;     /* will limit the maximum pages to be allocated */ 
        }

        /* get backing store number for a current process */
        if ((bsid = allocate_bs(heap_allocate)) == SYSERR) {
            proctab[pid].prstate = PR_FREE;
            restore(mask);
            return SYSERR;
        }

        /* add backing store mapping */
        if (addBackingStoreMapping(bsid, pid, FIRST_VPNO, heap_allocate) == NULL) {
            restore(mask);
            return SYSERR;
        }

        remaining_hsize = remaining_hsize - heap_allocate;
    
        kprintf("allocating : bsid : %d, remaining_hize : %d\n", bsid, remaining_hsize);
    }
   
    prptr->prvmemlist.mnext = (struct memblock *)(4096 * NBPG);

    prptr->prvmemlist.mlength = hsize * NBPG;

    /* process created using vcreate */
    proctab[pid].vcreate = TRUE;

    /* set the first time flag to TRUE */
    proctab[pid].vfirst = TRUE;

    /* process created successfully */
    vprcount++;
   
    if (vprcount == 8) {
        vcreate_good = FALSE;
    }

    kprintf("******* VCREATE DONE : %s ********\n", proctab[pid].prname);
    
    /* everything goes well */
    restore(mask);
    return pid;
}

///*------------------------------------------------------------------------
// *  newpid  -  Obtain a new (free) process ID
// *------------------------------------------------------------------------
// */
//local	pid32	newpid(void)
//{
//	uint32	i;			/* Iterate through all processes*/
//	static	pid32 nextpid = 1;	/* Position in table to try or	*/
//					/*   one beyond end of table	*/
//
//	/* Check all NPROC slots */
//
//	for (i = 0; i < NPROC; i++) {
//		nextpid %= NPROC;	/* Wrap around to beginning */
//		if (proctab[nextpid].prstate == PR_FREE) {
//			return nextpid++;
//		} else {
//			nextpid++;
//		}
//	}
//	return (pid32) SYSERR;
//}
