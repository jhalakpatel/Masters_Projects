/* vfreemem.c - vfreemem */

#include <xinu.h>

/*---------------------------------------------------------------------------
 *  vfreemem  -  Free a memory block (in virtual memory), returning the block
 *  to the free list.
 *---------------------------------------------------------------------------
 */
syscall	vfreemem(
	  char		*blkaddr,	/* Pointer to memory block	*/
	  uint32	nbytes		/* Size of block in bytes	*/
	)
{
	/* LAB5TODO */

    intmask mask;
    struct memblk *next, *prev, *block;
    uint32 vtop;

    mask = disable();

    /* check if the process is legitimized to use vfreemem */
    if (proctab[currpid].vcreate == FALSE) {
        restore(mask);
        return (char *)SYSERR;
    }
    
    /* check the limits of nbytes getting freed, if trying to free which was more it should give error */
    if ((nbytes == 0) || ((uint32)blkaddr < (uint32)(NBPG * SHARED_PAGES))
            || ((uint32)blkaddr > (uint32) (NBPG * (proctab[currpid].vhsize + 4096)))) {
        restore(mask);
        return SYSERR;
    }

    nbytes = (uint32) roundmb(nbytes);

    /* address of block to free */
    block = (struct memblk *)blkaddr;

    prev = &(proctab[currpid].prvmemlist);  /* pointer to current process virtual memory */

    next = (proctab[currpid].prvmemlist).mnext;      /* address of next virtual memory block */

    while ((next != NULL) && (next < block)) {
        prev = next;
        next = next->mnext;
    }

    /* if the no memory to free or next memory points to the block to free or beyond */
    if (prev == &(proctab[currpid].prvmemlist)) {
        vtop = (uint32) NULL;
    } else {
        vtop = (uint32) prev + prev->mlength;
    }

    /* Ensure the new block does not overlap previous 
     * or next blocks */

    if (((prev != &(proctab[currpid].prvmemlist)) && (uint32) block < vtop) || ((next != NULL) && (uint32) block+nbytes > (uint32)next)) {
        restore(mask);
        return SYSERR;
    }

    (proctab[currpid].prvmemlist).mlength += nbytes;

    /* add the free space to the previous virtual memory block */
    if (vtop == (uint32) block) {
        prev->mlength += nbytes;
        block = prev;
    } else {
        /* add the free space as a new node */
        block->mnext = next;
        block->mlength = nbytes;
        prev->mnext = block;
    }

    /* Coalesce with next block if adjacent */
    if (((uint32) block + block->mlength) == (uint32) next) {
        block->mlength += next->mlength;
        block->mnext = next->mnext;
    }

    kprintf("VFREEMEM : SUCCESS\n");

    restore(mask);
    return OK;
}
