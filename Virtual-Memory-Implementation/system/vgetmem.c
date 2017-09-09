/* vgetmem.c - vgetmem */

#include <xinu.h>

/*------------------------------------------------------------------------
 *  vgetmem  -  Allocate heap storage from virtual memory, returning lowest
 *  word address
 *------------------------------------------------------------------------
 */
char  	*vgetmem(
	  uint32	nbytes		/* Size of memory requested	*/
	)
{
	/* LAB5TODO */

    intmask mask;
    struct memblk *prev, *curr, *leftover;

    mask = disable();

    /* check if the process is legitimized to use vgetmem */
    if (proctab[currpid].vcreate == FALSE) {
        restore(mask);
        return (char *)SYSERR;
    }

    /* if the number of bytes requested is "0" or they exceed the number of maximum bytes that can be allocated, return error */
    /* not sure about limiting the nbytes */
    if (nbytes == 0) {
        restore(mask);
        return (char *)SYSERR;
    }

    /* initialize the vmemptr length */
    if (proctab[currpid].vfirst == TRUE) {
        struct memblk *vmemptr;
        vmemptr = &proctab[currpid].prvmemlist;
        vmemptr = vmemptr->mnext;
        vmemptr->mnext = NULL;
        vmemptr->mlength = (proctab[currpid].vhsize * NBPG);
    }

    nbytes = (uint32) roundmb(nbytes);

    prev = &(proctab[currpid].prvmemlist);     
    curr = (proctab[currpid].prvmemlist).mnext;      /* current points to the pages above 4096 */    

    while (curr != NULL) {
        
        if (curr->mlength == nbytes) {
            prev->mnext = curr->mnext;
            (proctab[currpid].prvmemlist).mlength -= nbytes;    /* allocate memory from current process virtual heap */
            restore(mask);
            kprintf("==== VGETMEM SUCCESS [%d] ====\n", nbytes);
            return (char *)(curr);
        } else if (curr->mlength > nbytes) {
            leftover = (struct memblk *)((uint32) curr + nbytes);
            prev->mnext = leftover;      /* memlist next will become leftover portion */
            leftover->mnext = curr->mnext;
            leftover->mlength = curr->mlength - nbytes;         /* leftovers mlength */
            (proctab[currpid].prvmemlist).mlength -= nbytes;     /* remaining bytes with the vmemlist */
            kprintf("==== VGETMEM SUCCESS [%d] ====\n", nbytes);
            restore(mask);
            return (char *)(curr);
        } else {
            prev = curr;
            curr = curr->mnext;
        }
    }
    
    restore(mask);
    return (char *)SYSERR;
}
