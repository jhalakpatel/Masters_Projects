/* page.c - virtual page management */

#include <xinu.h>
#include <lab5.h>

pt_t *global_page_tables[4];
pt_t *device_page_table;

/* initialize device page tables : create 1 page tanle */
int initialize_device_page_table() {

    int j;
    pt_t    *ptptr;
   
    device_page_table = ptptr = pt_allocate();

    //kprintf("device page table : %x\n", (uint32)device_page_table);

    /* make the global page table pointer points to the page table pointer */

    /* fill all the data in the page table */
    for (j=0; j<NENTRIES; j++) {
       ptptr[j].pt_pres   =   1;  /* page is present */
       ptptr[j].pt_write  =   1;  /* page is writable */
       ptptr[j].pt_user   =   0;
       ptptr[j].pt_pwt    =   0;
       ptptr[j].pt_pcd    =   0;
       ptptr[j].pt_acc    =   0;
       ptptr[j].pt_dirty  =   0;
       ptptr[j].pt_mbz    =   0;
       ptptr[j].pt_global =   0;
       ptptr[j].pt_avail  =   0;
       ptptr[j].pt_base   =   VMEM_PAGE_LIMIT + j;
    }
    return OK;
}

/* initialize global page tables : create 4 global page tables    */
int initialize_global_page_tables() {

    int i, j;
    pt_t    *ptptr;

    for (i=0; i<GLOBAL_FRAMES; i++) {

        ptptr = pt_allocate();

        /* make the global page table pointer points to the page table pointer */
        global_page_tables[i] = ptptr;

        //kprintf("global page table[%d]: %x\n", i, (uint32)global_page_tables[i]);

        if (ptptr == NULL) {
            return SYSERR;
        }

        /* fill all the data in the page table */
        for (j=0; j<NENTRIES; j++) {
            ptptr[j].pt_pres   =   1;  /* page is present */
            ptptr[j].pt_write  =   1;  /* page is writable */
            ptptr[j].pt_user   =   0;
            ptptr[j].pt_pwt    =   0;
            ptptr[j].pt_pcd    =   0;
            ptptr[j].pt_acc    =   0;
            ptptr[j].pt_dirty  =   0;
            ptptr[j].pt_mbz    =   0;
            ptptr[j].pt_global =   0;
            ptptr[j].pt_avail  =   0;
            ptptr[j].pt_base   =   i*NENTRIES + j;
        }
    }
    return OK;
}

/* pt_alloc : create a page table   */
pt_t* pt_allocate() {
    int     i;
    frame_t *frameptr;
    pt_t    *pt;

    /* allocate new frame of physical memory for a page table to map */
    if ((frameptr = frame_allocate()) == NULL) {
        return NULL;
    }

    /* assign frame type : FRAME_PT */
    frameptr->type = FRAME_PT;

    /* need to get the physical address of the frame and get the page pointer to point to actual 
     * frame address
    */
    pt = (pt_t *)(((FRAME0 +frameptr->frame_id))*NBPG);//FrameId_To_PhysicalAddress(frameptr->frame_id);

    /* initialize page table entries */
    for (i=0; i<NENTRIES; i++) {
        pt[i].pt_pres   =   0;
        pt[i].pt_write  =   0;
        pt[i].pt_user   =   0;
        pt[i].pt_pwt    =   0;
        pt[i].pt_pcd    =   0;
        pt[i].pt_acc    =   0;
        pt[i].pt_dirty  =   0;
        pt[i].pt_mbz    =   0;
        pt[i].pt_global =   0;
        pt[i].pt_avail  =   0;
        pt[i].pt_base   =   0;
    }

    hook_ptable_create(VirtualAddress_To_VirtualPageNumber(pt));

    return pt;
}

/* page_table free : free a page table */
int page_table_free(pt_t *ptptr) {
    
    free_frame(PhysicalAddress_To_FramePointer(ptptr));

    hook_ptable_delete(VirtualAddress_To_VirtualPageNumber(ptptr));
    
    return OK;
}

/* page_free : free page table entry */
int page_free(pt_t *pt) {
    pt->pt_pres     =   0;
    pt->pt_write    =   0;
    pt->pt_user     =   0;
    pt->pt_pwt      =   0;
    pt->pt_pcd      =   0;
    pt->pt_acc      =   0;
    pt->pt_dirty    =   0;
    pt->pt_mbz      =   0;
    pt->pt_global   =   0;
    pt->pt_avail    =   0;
    pt->pt_base     =   0;

    return OK;
}

/* pd_allocate : allocate page directory    */
pd_t* pd_allocate() {
    int         i;
    frame_t     *frameptr;
    pd_t        *pdptr;

    /* get a frame to allocate physical memory for storing page directory */
    frameptr = frame_allocate();

    /* make the frame type : FRAME_PD */
    frameptr->type = FRAME_PD;

    /* get the pointer to the page directory in the physical address map or frames */
    pdptr = (pd_t *) FrameId_To_PhysicalAddress(frameptr->frame_id);
    
    /* initialize page directory entries */
    for (i=0; i<NENTRIES; i++) {
        pdptr[i].pd_pres   =   0;
        pdptr[i].pd_write  =   0;
        pdptr[i].pd_user   =   0;
        pdptr[i].pd_pwt    =   0;
        pdptr[i].pd_pcd    =   0;
        pdptr[i].pd_acc    =   0;
        pdptr[i].pd_mbz    =   0;
        pdptr[i].pd_global =   0;
        pdptr[i].pd_avail  =   0;
        pdptr[i].pd_base   =   0;
    }
         
    /* overwrite the page directory entries for the first four page table */
    for (i=0; i<GLOBAL_FRAMES; i++) {
        pdptr[i].pd_pres   =   1;
        pdptr[i].pd_write  =   1;
        pdptr[i].pd_avail  =   0;
        pdptr[i].pd_base   =   (uint32)global_page_tables[i]/NBPG;
    }

    /* setting for device memory */
    pdptr[DEVICE_MEMORY_DIR_INDEX].pd_pres  = 1;
    pdptr[DEVICE_MEMORY_DIR_INDEX].pd_write = 1;
    pdptr[DEVICE_MEMORY_DIR_INDEX].pd_avail = 0;
    pdptr[DEVICE_MEMORY_DIR_INDEX].pd_base  = (uint32)device_page_table/NBPG;
    //VirtualAddress_To_VirtualPageNumber(device_page_table);

    return pdptr;
}

/* page_directory_free : free a page directory  */
int page_directory_free(pd_t *pdptr) {
    int     i;
    for (i=0 ; i< NENTRIES; i++) {
        page_table_free((pt_t *)&pdptr[i]);
    }

    /* free frame corresponding to page directory */
    free_frame(PhysicalAddress_To_FramePointer(pdptr));

    return OK;
}


