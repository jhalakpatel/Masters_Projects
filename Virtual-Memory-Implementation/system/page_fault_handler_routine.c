/* page_fault_handler : function to handle page fault
 * page fault can mean two things :
 *  1. virtual page on which faulted address exists is not present in the page table
 *  2. page table containing the page which contain the entry for virtual address does not exists
 */

#include<xinu.h>

int page_fault_handler_routine() {

    intmask                 mask;                   /* mask */
    //virtual_address_t       *faultaddressptr;       /* fault address in virtual address format */
    struct procent          *prptr;                 /* process pointer to hold current process */
    pd_t                    *pdptr;
    pt_t                    *ptptr;
    backing_store_map_t *bsmapptr;          /* pointer to a backing store mapping
  
                                               corresponding to the faulted address */
    uint32              backing_store_page_offset;
    uint32              page_table_offset;
    uint32              page_dir_offset;
    uint32              page_offset; 
    virtual_address_t             *faultaddressptr;

    uint32              ptframeNumber;        /* frame Id number for page table */
    frame_t             *frameptr;            /* points to frame of the faulted address */

    unsigned long   cr2;

    mask = disable();

    /* using intel manual learnings :
     *      address at which page fault occurs is stored in control register : "cr2"
    */

    // increase frame count
    pfrcount++;

    cr2 = read_cr2();

    faultaddressptr = (virtual_address_t *)(&cr2); 

    hook_pfault((void*)cr2);
    kprintf("PF for process = %s\n", proctab[currpid].prname);

    /* initialize pointer to the current process */
    prptr = &proctab[currpid];

    /* get the pointer to page directory for a process */
    pdptr = prptr->prpdptr;

    /* check if the faulted address belong to the current process backing store */
    /* if the virtual address belongs to the backing store : get the pointer to backing store
     * mapping
     */
    if ((bsmapptr = lookUpBackingStoreMap(currpid, VirtualAddress_To_VirtualPageNumber(cr2))) == NULL) {
        /* no mapping present for the current fault address, something wrong */
        kill(currpid);
        restore(mask);
        return SYSERR;
    }

    /* get backing store page offset in the backing store */
    backing_store_page_offset = VirtualAddress_To_VirtualPageNumber(cr2) - bsmapptr->firstvpn;

    page_dir_offset   = faultaddressptr->page_dir_offset;
    
    page_table_offset = faultaddressptr->page_table_offset;

    page_offset = faultaddressptr->page_offset;

    /* page_dir_offset points to the page table, check whether the page table exists or not
     */
    if (pdptr[page_dir_offset].pd_pres == 0) {
        /* page table does not exists, create a page table */

        /* pointer to the new page table */
        if ((ptptr = pt_allocate()) == NULL) {
            kill(currpid);
            restore(mask);
            return SYSERR;
        }
        /* initialize the page table entries */
        pdptr[page_dir_offset].pd_pres   = 1;     /* set the page table to be present */
        pdptr[page_dir_offset].pd_write  = 1;     /* enable writing of page */
        pdptr[page_dir_offset].pd_user   = 0;     
        pdptr[page_dir_offset].pd_pwt    = 0;     
        pdptr[page_dir_offset].pd_pcd    = 0;     
        pdptr[page_dir_offset].pd_acc    = 0;     
        pdptr[page_dir_offset].pd_mbz    = 0;     
        pdptr[page_dir_offset].pd_fmb    = 0;     
        pdptr[page_dir_offset].pd_global = 0;     
        pdptr[page_dir_offset].pd_base   = ( (unsigned int) ptptr)/NBPG;    /* Store the page number where the page table base is located in the frame [1024 - 4096]*/      
    
        //ptptr = VirtualPageNumber_To_VirtualAddress(pdptr[page_dir_offset].pd_base);
        ptptr = (pt_t*) ( (pdptr[page_dir_offset].pd_base)*NBPG );

        ptframeNumber = PhysicalAddress_To_FrameId(ptptr);

    } else {
        
        //ptptr = VirtualPageNumber_To_VirtualAddress(pdptr[page_dir_offset].pd_base);
        ptptr = (pt_t*) ( (pdptr[page_dir_offset].pd_base)*NBPG );
     
        // pt frame number 
        ptframeNumber = PhysicalAddress_To_FrameId(ptptr);

        /* increment the reference count of the frame holding page table in inverted page table */
        ivptab[ptframeNumber].refcount++;
    }

    /* obtain a free frame */
    frameptr = find_free_frame();

    //kprintf("frame id : %d\n", frameptr->frame_id);

    ivptab[frameptr->frame_id].vpn = VirtualAddress_To_VirtualPageNumber(cr2); 
    
    /* store the pid for the frame */
    ivptab[frameptr->frame_id].pid = currpid;

    /* make the frame present */
    ivptab[frameptr->frame_id].refcount = 1;

    /* frame bs */
    frametab[frameptr->frame_id].type = FRAME_BS;
    
    hook_pswap_out(ivptab[frameptr->frame_id].vpn , frameptr->frame_id);

    //printf("frame id : %d , physical address : %x\n", frameptr->frame_id, &frametab[frameptr->frame_id]);

    /* copy the page "o" of the store to f */
    open_bs(bsmapptr->bsid);
    //read_bs((char*)&frametab[frameptr->frame_id], bsmapptr->bsid, backing_store_page_offset);
    read_bs((char *)((FRAME0+ frameptr->frame_id)*NBPG), bsmapptr->bsid, backing_store_page_offset);
    close_bs(bsmapptr->bsid);

    /* update the page table to make the entry present */
    ptptr[page_table_offset].pt_pres = 1;
    ptptr[page_table_offset].pt_write = 1;
    ptptr[page_table_offset].pt_base = FrameId_To_VirtualPageNumber(frameptr->frame_id);    /* get the allocated address in the physical address mapping */
   
    //set_PDBR(VirtualAddress_To_VirtualPageNumber(pdptr));
    
    restore(mask);
    return OK;
}
