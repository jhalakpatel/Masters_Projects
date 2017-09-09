
#ifndef __PAGING_H_
#define __PAGING_H_

/* Structure for a page directory entry */

typedef struct {
	unsigned int pd_pres	: 1;		/* page table present?		*/
	unsigned int pd_write : 1;		/* page is writable?		*/
	unsigned int pd_user	: 1;		/* is use level protection?	*/
	unsigned int pd_pwt	: 1;		/* write through cachine for pt? */
	unsigned int pd_pcd	: 1;		/* cache disable for this pt?	*/
	unsigned int pd_acc	: 1;		/* page table was accessed?	*/
	unsigned int pd_mbz	: 1;		/* must be zero			*/
	unsigned int pd_fmb	: 1;		/* four MB pages?		*/
	unsigned int pd_global: 1;		/* global (ignored)		*/
	unsigned int pd_avail : 3;		/* for programmer's use		*/
	unsigned int pd_base	: 20;		/* location of page table?	*/
} pd_t;

/* Structure for a page table entry */

typedef struct {
	unsigned int pt_pres	: 1;		/* page is present?		*/
	unsigned int pt_write : 1;		/* page is writable?		*/
	unsigned int pt_user	: 1;		/* is use level protection?	*/
	unsigned int pt_pwt	: 1;		/* write through for this page? */
	unsigned int pt_pcd	: 1;		/* cache disable for this page? */
	unsigned int pt_acc	: 1;		/* page was accessed?		*/
	unsigned int pt_dirty : 1;		/* page was written?		*/
	unsigned int pt_mbz	: 1;		/* must be zero			*/
	unsigned int pt_global: 1;		/* should be zero in 586	*/
	unsigned int pt_avail : 3;		/* for programmer's use		*/
	unsigned int pt_base	: 20;		/* location of page?		*/
} pt_t;

/* Structure for backing store map */
typedef struct {
    bsd_t    bsid;                   /* backing store ID */
    pid32   pid;                    /* process ID */
    uint32  firstvpn;              /* virtual address */
    uint32  pageoffset;             /* page offset in store */
    uint32  npages;                 /* number of pages in the store */
} backing_store_map_t;

extern backing_store_map_t bsmaptab[];

/* Structure for Inverted page table */

typedef struct {
    uint32  refcount;             /* reference count */ 
    pid32   pid;                  /* process ID */
    uint32  vpn;                  /* virtual page number or virtual address */
} inverted_page_table_t;

extern inverted_page_table_t ivptab[];    /* inverse page table, where index is implicit page number */ 

/* Strcuture for accessing Virtual Address */
/*  _________________________
    |   10  |   10  |   12  |
    |_______|_______|_______|
*/

typedef struct {
    uint32 page_offset          : 12;
    uint32 page_table_offset    : 10;
    uint32 page_dir_offset      : 10;     
} virtual_address_t;

/* structure of a frame */
typedef struct frame_t {
    uint32  frame_id;         /* id of the frame : varying from 0 to 3072 */
    uint32  status;           /* can be FRAME_FREE or FRAME_USED          */
    uint32  type;             /* defines how a frame can be used : PD, PT or BS */
    //uint32  refcount;        
                                /* contains the count of allocated entries within a frame
                               refcount++ : when a entry within a frame is allocated
                               refcount-- : when a entry within a frame is deallocated
                               if refcount == 0 : release the frame
                               */
    uint32 accessed;
    /* refcount if FRAME_PT --> number of page mappings in the page table */
    struct frame_t *next_frame;        /* pointer to the next frame entry       */
} frame_t;

extern frame_t      frametab[];

#define NBPG		4096	/* number of bytes per page	*/
#define FRAME0		1024	/* zero-th frame		*/

#ifndef NFRAMES
#define NFRAMES		20	/* number of frames		*/
#endif

#define MAP_SHARED 1
#define MAP_PRIVATE 2

#define FIFO 3
#define GCA 4

#define MAX_ID		7		/* You get 8 mappings, 0 - 7 */
#define MIN_ID		0

/* To switch between virtual page number and virtual address */
#define VirtualAddress_To_VirtualPageNumber(vaddr)   ((uint32)(vaddr) / NBPG)
#define VirtualPageNumber_To_VirtualAddress(vpn)    ((uint32)(vpn) * NBPG)

#define FrameId_To_PhysicalAddress(frmid)            ((FRAME0 + ((uint32)frmid)) * NBPG)
#define FrameId_To_VirtualPageNumber(frmid)          (FRAME0 + (uint32)frmid)
#define PhysicalAddress_To_FrameId(paddr)            ((((uint32)paddr)/NBPG) - FRAME0)
#define PhysicalAddress_To_FramePointer(paddr)       (&frametab[PhysicalAddress_To_FrameId(paddr)])

/* total number of entries in a frame :
 *         1. entries in a frame are 32 bit address (i.e. page table address)
 *         2. total size of a frame (physical memory) : 4KB
 *         3. total of entries in a frame : 4 KB / 4 byte = 1024
 */
#define NENTRIES    (NBPG/4)

/* status of a frame : based on its usage
 * a frame can be used to store page directory, page table or actual page
 */
#define FRAME_BS 0
#define FRAME_PD 1    /* frame stores page table directory */
#define FRAME_PT 2    /* frame stores page table           */

#define FRAME_FREE 0
#define FRAME_USED 1

#define isFrameIdValid(frame_id)                       ((frame_id >= 0) && (frame_id < NFRAMES))
#define isBackingStoreValid(bsid)                   ((bsid < MAX_BS_ENTRIES) && (bsid >= 0))


#endif // __PAGING_H_
