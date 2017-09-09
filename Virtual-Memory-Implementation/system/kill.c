/* kill.c - kill */

#include <xinu.h>

/*------------------------------------------------------------------------
 *  kill  -  Kill a process and remove it from the system
 *------------------------------------------------------------------------
 */
syscall	kill(
	  pid32		pid		/* ID of process to kill	*/
	)
{
	intmask	mask;			/* Saved interrupt mask		*/
	struct	procent *prptr;		/* Ptr to process' table entry	*/
	int32	i;			/* Index into descriptors	*/

	mask = disable();
	if (isbadpid(pid) || (pid == NULLPROC)
	    || ((prptr = &proctab[pid])->prstate) == PR_FREE) {
		restore(mask);
		return SYSERR;
	}

    ///* decrease vprocess count */
    //if (proctab[pid].vcreate == TRUE) { /* if the process was created using vcreate, decrease the count */
    //   
    //    for (i = 0; i < NFRAMES; i++) {
    //        
    //        if (ivptab[i].refcount > 0) {
    //           
    //            /* free a frame */
    //            free_frame(&frametab[i]);           
    //       
    //            /* free page directory frame */
    //            kprintf("===== FREE FRAME : %x @ %d with Process : %s =====\n", PhysicalAddress_To_FrameId(proctab[pid].prpdptr), proctab[pid].prpdptr, proctab[pid].prname);
    //        }

    //    }

    //    //page_directory_free(proctab[pid].prpdptr);
    //  
    //    /* remove backing store map */
    //    for (i = 0; i < MAX_BS_ENTRIES; i++) {
    //        /* get the bsmapping of the process getting killed */
    //        if (bsmaptab[i].pid == pid) {
    //            bsmaptab[i].bsid = 0;
    //            bsmaptab[i].pid = 0;
    //            bsmaptab[i].firstvpn = 0;
    //            bsmaptab[i].npages = 0;

    //            /* release backing store */
    //            deallocate_bs(i);
    //        }
    //    }

    int j, k;
    pt_t* pt;
    pd_t* pd;
    struct frame_t* frame;

    // 1. All frames which currently hold any of its pages should be written to the backing store and be freed
    // 4. Frames used for the process's page directory and page tables should be released
    pd = proctab[pid].prpdptr;
    
    for(j = 4; j < NENTRIES; j++)
    {
        if(j == 576)
            continue;

        // Is this page table present?
        if(pd[j].pd_pres)
        {
            pt = (pt_t *) ((pd[j].pd_base) * NBPG);            

            // Iterate over page table entries
            for(k = 0; k < NENTRIES; k++)
            {
                if(pt[k].pt_pres)
                {
                    //frame = &frametab[(pt[k].pt_base - FRAME0)];
                    //free_frame(frame);
                    ivptab[(pt[k].pt_base - FRAME0)].refcount = 0;
                }
            }
        }
    }

    //free_frame(&frametab[(pd/NBPG) - FRAME0]);

    ivptab[((uint32)pd/NBPG) - FRAME0].refcount = 0;

    if (proctab[pid].vcreate == TRUE)
    {
        kprintf("Killed process = %s\n", proctab[pid].prname);

        /* decrease the vprocess count */
        vprcount--;

        /* remove backing store map */
        for (i = 0; i < MAX_BS_ENTRIES; i++) 
        {
            /* get the bsmapping of the process getting killed */
            if (bsmaptab[i].pid == pid)
            {
                bsmaptab[i].bsid = 0;
                bsmaptab[i].pid = 0;
                bsmaptab[i].firstvpn = 0;
                bsmaptab[i].npages = 0;

                /* release backing store */
                close_bs(i);
                deallocate_bs(i);
            }
        }

    }
  
        /* reset the process vcreate flag */
        proctab[pid].vcreate = FALSE;

        /* again allow to vcreate only when every other process have left the backing store */
        if (vprcount < 1) {
            vcreate_good = TRUE;
        }

	if (--prcount <= 1) {		/* Last user process completes	*/
		xdone();
	}

	send(prptr->prparent, pid);
	for (i=0; i<3; i++) {
		close(prptr->prdesc[i]);
	}

	freestk(prptr->prstkbase, prptr->prstklen);

	switch (prptr->prstate) {
	case PR_CURR:
		prptr->prstate = PR_FREE;	/* Suicide */
		resched();

	case PR_SLEEP:
	case PR_RECTIM:
		unsleep(pid);
		prptr->prstate = PR_FREE;
		break;

	case PR_WAIT:
		semtab[prptr->prsem].scount++;
		/* Fall through */

	case PR_READY:
		getitem(pid);		/* Remove from queue */
		/* Fall through */

	default:
		prptr->prstate = PR_FREE;
	}

	restore(mask);
	return OK;
}
