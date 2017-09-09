/* initialize.c - nulluser, sysinit, sizmem */

/* Handle system initialization and become the null process */

#include <xinu.h>
#include <string.h>

extern	void	start(void);	/* Start of Xinu code			*/
extern	void	*_end;		/* End of Xinu code			*/

/* Function prototypes */

extern	void main(void);	/* Main is the first process created	*/
extern	void xdone(void);	/* System "shutdown" procedure		*/
static	void sysinit(); 	/* Internal system initialization	*/
extern	void meminit(void);	/* Initializes the free memory list	*/

/* Initializes data structures and necessary set ups for paging, in Lab5. */
static	void initialize_paging();

int page_replacement_policy;

/* Declarations of major kernel variables */

struct	procent	proctab[NPROC];	/* Process table			*/
struct	sentry	semtab[NSEM];	/* Semaphore table			*/
struct	memblk	memlist;	/* List of free memory blocks		*/

/* Declaration of major paging related kernel variables */
backing_store_map_t     bsmaptab[MAX_BS_ENTRIES];   /* Backing Store Map table  */
inverted_page_table_t   ivptab[NFRAMES];    /* Inverted page table  */
frame_t                 frametab[NFRAMES];  /* Frame Table  */

pt_t *global_page_tables[4];
pt_t * device_page_table;

/* Active system status */
int	prcount;		/* Total number of live processes	*/
int vprcount;
bool8 vcreate_good = TRUE;

pid32	currpid;		/* ID of currently executing process	*/
int pfrcount;

bool8   PAGE_SERVER_STATUS;    /* Indicate the status of the page server */
sid32   bs_init_sem;
/*------------------------------------------------------------------------
 * nulluser - initialize the system and become the null process
 *
 * Note: execution begins here after the C run-time environment has been
 * established.  Interrupts are initially DISABLED, and must eventually
 * be enabled explicitly.  The code turns itself into the null process
 * after initialization.  Because it must always remain ready to execute,
 * the null process cannot execute code that might cause it to be
 * suspended, wait for a semaphore, put to sleep, or exit.  In
 * particular, the code must not perform I/O except for polled versions
 * such as kprintf.
 *------------------------------------------------------------------------
 */

void	nulluser()
{
	struct	memblk	*memptr;	/* Ptr to memory block		*/
	uint32	free_mem;		/* Total amount of free memory	*/

	/* Initialize the system */

	sysinit();
	initialize_paging(); // added for Lab5

	kprintf("\n\r%s\n\n\r", VERSION);

	/* Output Xinu memory layout */
	free_mem = 0;
	for (memptr = memlist.mnext; memptr != NULL;
						memptr = memptr->mnext) {
		free_mem += memptr->mlength;
	}
	kprintf("%10d bytes of free memory.  Free list:\n", free_mem);
	for (memptr=memlist.mnext; memptr!=NULL;memptr = memptr->mnext) {
	    kprintf("           [0x%08X to 0x%08X]\r\n",
		(uint32)memptr, ((uint32)memptr) + memptr->mlength - 1);
	}

	kprintf("%10d bytes of Xinu code.\n",
		(uint32)&etext - (uint32)&text);
	kprintf("           [0x%08X to 0x%08X]\n",
		(uint32)&text, (uint32)&etext - 1);
	kprintf("%10d bytes of data.\n",
		(uint32)&ebss - (uint32)&data);
	kprintf("           [0x%08X to 0x%08X]\n\n",
		(uint32)&data, (uint32)&ebss - 1);

	/* Create the RDS process */

	rdstab[0].rd_comproc = create(rdsprocess, RD_STACK, RD_PRIO,
					"rdsproc", 1, &rdstab[0]);
	if(rdstab[0].rd_comproc == SYSERR) {
		panic("Cannot create remote disk process");
	}

    kprintf("Resuming RDS Process\n");

	resume(rdstab[0].rd_comproc);

	/* Enable interrupts */

	enable();

	/* Create a process to execute function main() */

	resume (
	   create((void *)main, INITSTK, INITPRIO, "Main process", 0,
           NULL));

	/* Become the Null process (i.e., guarantee that the CPU has	*/
	/*  something to run when no other process is ready to execute)	*/

	while (TRUE) {
		;		/* Do nothing */
	}

}

/*------------------------------------------------------------------------
 *
 * sysinit  -  Initialize all Xinu data structures and devices
 *
 *------------------------------------------------------------------------
 */
static	void	sysinit()
{
	int32	i;
	struct	procent	*prptr;		/* Ptr to process table entry	*/
	struct	sentry	*semptr;	/* Ptr to semaphore table entry	*/
	
    /* Platform Specific Initialization */

	platinit();

	/* Initialize the interrupt vectors */

	initevec();

	/* Initialize free memory list */

	meminit();

	/* Initialize system variables */

	/* Count the Null process as the first process in the system */

	prcount = 1;

    vprcount = 0;

	/* Scheduling is not currently blocked */

	Defer.ndefers = 0;

	/* Initialize process table entries free */

	for (i = 0; i < NPROC; i++) {
		prptr = &proctab[i];
		prptr->prstate = PR_FREE;
		prptr->prname[0] = NULLCH;
		prptr->prstkbase = NULL;
		prptr->prprio = 0;
	    prptr->vcreate = FALSE;
        prptr->prpdptr = NULL;
        prptr->prbsid = 0;
        prptr->vhsize = 0;
        prptr->vfirst = FALSE;
    }

	/* Initialize the Null process entry */

	prptr = &proctab[NULLPROC];
	prptr->prstate = PR_CURR;
	prptr->prprio = 0;
	strncpy(prptr->prname, "prnull", 7);
	prptr->prstkbase = getstk(NULLSTK);
	prptr->prstklen = NULLSTK;
	prptr->prstkptr = 0;
	currpid = NULLPROC;

	/* Initialize semaphores */

	for (i = 0; i < NSEM; i++) {
		semptr = &semtab[i];
		semptr->sstate = S_FREE;
		semptr->scount = 0;
		semptr->squeue = newqueue();
	}

	/* Initialize buffer pools */

	bufinit();

	/* Create a ready list for processes */

	readylist = newqueue();

	/* Initialize the real time clock */

	clkinit();

	for (i = 0; i < NDEVS; i++) {
		init(i);
	}

	PAGE_SERVER_STATUS = PAGE_SERVER_INACTIVE;
	bs_init_sem = semcreate(1);

	return;
}

static void initialize_paging()
{
    /* LAB5TODO */
    pd_t *pdptr;
    pfrcount = 0;

    kprintf("Initializing Paging\n");

    page_replacement_policy = FIFO;

    /* initialize frame table */
    kprintf("frame table initialization : begin\n");
    initialize_frame_table();
    kprintf("frame table initialization : done\n");

    /* initialize device memory tables */
    kprintf("device table initialization : begin\n");
    initialize_device_page_table();
    kprintf("device table initialization : done\n");
    
    /* initialize global page table */
    kprintf("global page table initialization : begin\n");
    initialize_global_page_tables();
    kprintf("global page table initialization : done\n");

    /* create page directory for null process */
    if ((proctab[NULLPROC].prpdptr = pd_allocate()) == NULL)
        return;

    pdptr = proctab[NULLPROC].prpdptr;

    kprintf("Null Process : pdptr : %x, pdnumber : %d\n", pdptr, VirtualAddress_To_VirtualPageNumber(pdptr));

    /* set page directory base register : PDBR with the value of null process */
    kprintf("Setting PDBR : begin\n");
    set_PDBR(VirtualAddress_To_VirtualPageNumber(pdptr));
    kprintf("Setting PDBR : done\n");
    
    /* need to set the page fault interrupt routine */
    kprintf("Setting Page Fault Routine : begin\n");
    set_evec(14, (unsigned long)page_fault_handler);
    kprintf("Setting Page Fault Routine : done\n");
    
    /* need to enable paging */
    kprintf("Enable Paging : begin\n");
    enable_paging(); 
    kprintf("Enable Paging : done\n");

    return;
}

int32	stop(char *s)
{
	kprintf("%s\n", s);
	kprintf("looping... press reset\n");
	while(1)
		/* Empty */;
}

int32	delay(int n)
{
	DELAY(n);
	return OK;
}


