/* frame.c : frame allocation related functions */

#include<xinu.h>

frame_t *frame_head;    /* pointer to the head of the frame */

/* initialize_frame_table : initializes the frame table entries */
void initialize_frame_table() {
    int i;
    frame_head = NULL;
    
    for (i = 0; i < NFRAMES; i++) {
        frametab[i].frame_id = i;           /* index of a frame */
        frametab[i].status   = FRAME_FREE;
        frametab[i].type     = FRAME_FREE;
        frametab[i].next_frame = (frame_t *)NULL;

        /* initialize inverted page table */
        ivptab[i].refcount = 0;
        ivptab[i].pid = 0;
        ivptab[i].vpn = 0;
    }

    /* everything goes well */
    return;
}

/* frame eviction using FIFO based replacement policy */
frame_t *evict_frame_using_fifo() {
    /* start from head of the fifo and search for the first backing store to evict.
     * as page directory and page table can not be evicted */

    kprintf("==== Replacing Frame ====\n");

    frame_t *currptr = frame_head;
    bool8 flag = FALSE;

    while(currptr != NULL) {

        kprintf("currptr : %x, type : %d\n", currptr->frame_id, currptr->type);

        if (currptr->type == FRAME_BS) {
            flag = 1;
            break;  
        }    
        
        currptr = currptr->next_frame;  /* allocate next frame to the current frame pointer */
    }
    
    if (flag) {
        kprintf("==== Replacement Found ====\n");
        return currptr;                 /* reutrn frame to evict */
    } else {
        kprintf("Error : No Replacement Found\n");
    }
    /* no free backing store found, return NULL */
    return NULL;
}

/* frame eviction using GCA based replacement policy */
frame_t *evict_frame_using_gca() {
    /* no free backing store found, return NULL */
    return NULL;
}

/* free_frame_available : check whether a free frame is available or not */
frame_t* find_free_frame() {
    inverted_page_table_t *ivptabentryptr;
    frame_t               *frameptr;
    int i;

    for (i=0; i <NFRAMES; i++) {
         ivptabentryptr = &ivptab[i];

         kprintf("i : %d, refcount :%d, pid : %d, vpn : %d\n", i, ivptabentryptr->refcount, ivptabentryptr->pid, ivptabentryptr->vpn);

        if (ivptabentryptr->refcount == 0) {
            /* found free frame entry */
            kprintf("Found Free Frame: %d\n", i);
            frameptr = &frametab[i];
            return frameptr;
        }
    }

    kprintf("====== FIFO FULL ======\n");
    
    /* if unable to find free frame, need to call eviction policy */

    if (get_replacement_policy() == FIFO) {
        if ((frameptr = evict_frame_using_fifo()) == NULL) {
            kprintf("returning null : %x, id : %d\n", frameptr, frameptr->frame_id);
            return NULL;
        }
    } else if (get_replacement_policy() == GCA) {
        if ((frameptr = evict_frame_using_gca()) == NULL) {
            return NULL;
        }
    } else {
        return NULL;
    }
         
    
    kprintf("Calling Free Frame for  : %x, id : %d\n", frameptr, frameptr->frame_id);

    free_frame(frameptr);

    return frameptr;
}

/* remove_free_frame_from_fifo : need to remove free frame from fifo */
void remove_free_frame_from_fifo() {

    frame_t *prevptr;
    frame_t *currptr;

    prevptr = NULL;
    currptr = frame_head;   
    while (currptr) {
        if (currptr->status == FRAME_FREE) {

            /* if frame head is free, adjust the head */
            if (prevptr == NULL) {
                frame_head = currptr->next_frame;
                currptr = frame_head;
            } else {
                /* remove the current frame, create a link between the prev frame and next of the current 
                 * remove frame */
                prevptr->next_frame = currptr->next_frame;
                currptr = prevptr->next_frame;
            }
            /* if removed a frame, and currptr and prevptr are adjusted properly */
            continue;
        }
        
        /* update current and previous pointer */
        prevptr = currptr;
        currptr = currptr->next_frame;
    }
}

/* free_frame.cc : function to free a frame */
int free_frame(frame_t *frameptr) {

    uint32              vpn;
    pid32               pid;
    pd_t                *pdptr;
    pt_t                *ptptr;
    frame_t             *ptframeptr;
    virtual_address_t   *vaddr;
    backing_store_map_t *bsmapptr;
    intmask             mask;
    uint32              backing_store_page_offset;
    
    mask = disable();
    
    /* using inverted page table, get the virtual page number and pid */
    vpn = ivptab[frameptr->frame_id].vpn;
    pid = ivptab[frameptr->frame_id].pid;

    kprintf("vpn : %d\n", vpn);
    kprintf("pid : %d\n", pid);

    /* get the virtual address stored in the frame */
    vaddr = (virtual_address_t*)VirtualPageNumber_To_VirtualAddress(vpn);

    kprintf("******** should work *********\n");

    /* get the pointer to the page directory of the process */
    pdptr = proctab[pid].prpdptr;
    
       kprintf("******** should work *********\n");
    /* get the pointer to the page table of the process */
    ptptr = (pt_t *)VirtualPageNumber_To_VirtualAddress(pdptr[vaddr->page_dir_offset].pd_base); 

       kprintf("******** should work *********\n");
    /* mark the page pointed by the page table to be not present */
    ptptr[vaddr->page_table_offset].pt_pres = 0;

       kprintf("******** should work *********\n");
    /* invalidate the TLB entry for the page "vp" if the page removed belong to current process */
    if (pid == currpid) {
       /* Invalidate TLB entries for the current page */
       //asm("movl vaddr, %eax");
       //asm("invlpg (%eax)"); 
       kprintf("******** should work *********\n");
       //set_PDBR(VirtualAddress_To_VirtualPageNumber(pdptr));
       asm volatile ("invlpg (%0)" : : "b"(vaddr) : "memory" );
    }

    /* get the frame for the page table */
    ptframeptr = &frametab[(unsigned int)ptptr/NBPG - FRAME0];
    
    /* decrement the inverted page table for the frame of the page table */
    ivptab[ptframeptr->frame_id].refcount--;

    if (ivptab[ptframeptr->frame_id].refcount == 0) {
        /* if the page table is empty */
        /* mark the page table pointed by the page directory as empty */
        pdptr[vaddr->page_dir_offset].pd_pres = 0;
    }

    /* check the dirty bit for page "vp" */
    if (ptptr[vaddr->page_table_offset].pt_dirty == 1) {

        kprintf("trying to write back\n");

        /* perform look up using backing store map */
        if ((bsmapptr = lookUpBackingStoreMap(pid, *(uint32*)vaddr)) == NULL) {
            /* no mapping present for the current fault address, something wrong */
            kill(pid);
            restore(mask);
            return SYSERR;
        }
        
        kprintf("bsmapptr : %d\n", bsmapptr->bsid);

        /* get backing store page offset in the backing store */
        backing_store_page_offset = VirtualAddress_To_VirtualPageNumber(*(uint32 *)vaddr) - bsmapptr->firstvpn;

        /* write back the frame to the backing store */
        open_bs(bsmapptr->bsid);
        write_bs((char*)((FRAME0 + frameptr->frame_id) * NBPG), bsmapptr->bsid, backing_store_page_offset);
        close_bs(bsmapptr->bsid);

        kprintf("done to write back\n");
    }

    /* make the frame status FREE and clean up the frame */
    frameptr->status = FRAME_FREE;

    /* need to remove frame from fifo */
    remove_free_frame_from_fifo();
    
    /* reset the frame parameters */
    frameptr->type = FRAME_FREE;            /* thus all the frame holding mapping will of free type */

    /* make the refernce count in the ivptab to 0 */
    ivptab[frameptr->frame_id].refcount = 0;

    kprintf("returning from free frame\n");

    restore(mask);
    
    return OK;
}

/* frame_allocate : obtain free frame using page replacement policy */
frame_t *frame_allocate() {
    frame_t     *frameptr;
    frame_t     *tempframeptr;

    /* need to get an empty frame */
    if ((frameptr = find_free_frame())  == NULL) {
        return NULL;
    }

    /* increase the reference count after allocating the frame */
    ivptab[frameptr->frame_id].refcount = 1;
    ivptab[frameptr->frame_id].pid = currpid;
    
    /* initialize the frame */
    frameptr->status = FRAME_USED;
    frameptr->next_frame = NULL;
    frameptr->type = FRAME_FREE;

    /* FIFO needs to be updated with the new allocated frame */
    
    /* check if the frame is first frame and fifo is empty */
    if (frame_head == NULL) {
        frame_head = frameptr;
    } else {
        tempframeptr = frame_head;
        /* find the frame whose next frame is NULL */
        while(tempframeptr->next_frame != NULL) {
            tempframeptr = tempframeptr->next_frame;
        }

        /* make the current frame point to the new frame */
        tempframeptr->next_frame = frameptr;
    }
   
    /* after allocation of frame and updating FIFO */
    return frameptr;
}
