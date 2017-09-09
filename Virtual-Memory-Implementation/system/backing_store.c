/* backing_store.c : All the function related to backing store related manipulations */
#include <xinu.h>

/* vpnInMap : checks whether the vpn belongs to a mapping store or not */
bool8 vpnInMap(backing_store_map_t *bsmapptr, uint32 vpn) {

    if ((vpn >= bsmapptr->firstvpn) && (vpn <= bsmapptr->firstvpn + bsmapptr->npages)) {
        
        kprintf("vpn in backing store : address check\n");
        
        return TRUE;
    }
    return FALSE;
}

/* function to add a mapping of backing store, process ID, virtual page number
 * and number of paged
 */
int addBackingStoreMapping(bsd_t bsid, pid32 pid, uint32 vpn, uint32 npages) {
    backing_store_map_t              *bsmapptr;        /* backing store map pointer */

    /* pointer to the backing store map table stored in kernel memory heap */
    bsmapptr = &bsmaptab[bsid];

    if (bsmapptr == NULL) {
        return SYSERR;
    }

    bsmapptr->bsid        =   bsid;   /* allocate backing store id */
    bsmapptr->pid         =   pid;    /* allocate process id */
    bsmapptr->firstvpn    =   vpn;    /* allocate virtual page number */
    bsmapptr->npages      =   npages; /* number of pages in the backing store */

//    kprintf("==== Adding backing store mapping ====\n");
//    kprintf("bsid   : %d\n", bsid);
//    kprintf("pid    : %d\n", pid);
//    kprintf("vpn    : %d\n", vpn);
//    kprintf("npages : %d\n", npages);
//    kprintf("==== Done adding backing store mapping ====\n");
    /* everything goes well */
    return OK;
}

/* function to look up backing store for find the backing store and
 * page offset for given virtual address and pid 
 */
backing_store_map_t* lookUpBackingStoreMap(pid32 pid, uint32 vpn) {
    backing_store_map_t   *bsmapptr;  /* pointer to backing store map */
    struct bs_entry       *bsptr;     /* pointer to backing store */
    uint32                i;

    /* check all the backing store entries, to figure out which backing store contains
     * the virtual page number corresponding to virtual address */

    for (i = 0; i < MAX_BS_ENTRIES; i++)    {

        bsptr = &bstab[i]; 
       
        /* get the pointer to the backing store map */
        bsmapptr = &bsmaptab[i];

        /* backing store is allocated */
        if (bsptr->isallocated == FALSE)
            continue;

        /* check if the backing store pid matches the current pid */
        if (bsmapptr->pid != pid)
            continue;

        /* if the mapping matches has the given vpn */
        if (vpnInMap(bsmapptr, vpn) == FALSE) {
            continue;
        }
        /* all conditions satisfied */
        break;
    }
    /* return the backing store map pointer */
    if(i == MAX_BS_ENTRIES)
        return NULL;
    else
        return bsmapptr;
}
