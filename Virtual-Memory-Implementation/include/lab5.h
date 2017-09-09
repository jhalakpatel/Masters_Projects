/* CS503 Fall 2015 - Lab 5 */

#ifndef __LAB5_H_
#define __LAB5_H_
// function declaration 
/* Test Struct */
struct test1struct {
    int a1;
    int b1;
    int c1;
};

struct test2struct {
    int a2;
    int b2;
    int c2;
};


// Hooks, in hooks.c
void hook_ptable_create(uint32 pagenum);
void hook_ptable_delete(uint32 pagenum);
void hook_pfault(void *addr);
void hook_pswap_out(uint32 pagenum, uint32 framenum);

/* total processes created using vcreate */
extern int vprcount;
extern bool8 vcreate_good;

/* Add more definitions here if necessary */
#define SHARED_PAGES 4096
#define VMEM_PAGE_LIMIT 589824
#define GLOBAL_FRAMES   4
#define FIRST_VPNO  4096
#define DEVICE_MEMORY 0x90000000
#define DEVICE_MEMORY_DIR_INDEX 576

/* function to translate virtual address to backing store and page offset with store */

void testfunc();

extern int pfrcount;

/* frame.c : function definations */
void initialize_frame_table();
frame_t *evict_frame_using_fifo();
frame_t *evict_frame_using_gca();
frame_t *find_free_frame() ;
void remove_free_frame_from_fifo();
int free_frame(frame_t *frameptr); 
frame_t *frame_allocate();

/* page.c : function definations */
int initialize_device_page_table(); 
int initialize_global_page_tables();
pt_t* pt_allocate();
int page_table_free(pt_t *ptptr);
int page_free(pt_t *pt);
pd_t* pd_allocate();
int page_directory_free(pd_t *pdptr);

/* backing_store.c : function definations */
int addBackingStoreMapping(bsd_t bsid, pid32 pid, uint32 vpn, uint32 npages);
backing_store_map_t* lookUpBackingStoreMap(pid32 pid, uint32 vpn);

/* page fault handler routine */
int page_fault_handler_routine();
extern void page_fault_handler(void);

/* enable paging control registers */
void set_cr0(unsigned long n);
unsigned long read_cr0(void); 
void set_cr1(unsigned long n);
unsigned long read_cr1(void); 
void set_cr2(unsigned long n);
unsigned long read_cr2(void); 
void set_cr3(unsigned long n);
unsigned long read_cr3(void); 
void set_cr4(unsigned long n);
unsigned long read_cr4(void); 

void enable_paging();
void set_PDBR(unsigned long pdbr_reg); 

/* srpolicy.c */
int get_replacement_policy();

/* global page table array */
extern pt_t * global_page_tables[GLOBAL_FRAMES];
extern pt_t * device_page_table;

int page_replacement_policy;

void vproc1();
void vproc2();

#endif // __LAB5_H_
