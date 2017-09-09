#include <xinu.h>
#include <stdio.h>
#include <lab5.h>


void vproc1() {

    kprintf("==== Process : %s ====\n", proctab[currpid].prname);

    /* calling test func */
    testfunc();
    
    //uint32 *virtualaddr = vgetmem(byte_request);

    //kprintf("===== ACCESS VIRTUAL ADDRESS =====\n");
    //
    //*virtualaddr = 0xA0A0A0A0;

    ///* access some virtual address */
    ////char *virtualaddr = (char *)0x2000000;  
    ////*(uint32*)virtualaddr = 0xDEADBEEF; 
    //kprintf("===== VIRTUAL ADDRESS READ : %x\n", *(uint32*)virtualaddr);
}

void testfunc(){
  struct test1struct *memptr;
  memptr = vgetmem(sizeof(struct test1struct));
  if(memptr == SYSERR){
    kprintf("ERROR TESTFUNC: Cannot do vgetmem\n");
    return; 
  }
  memptr->a1 =10; 
  memptr->b1=20;
  memptr->c1=40;
  kprintf("A -> : %d\n",memptr->a1);
  kprintf("B -> : %d\n",memptr->b1);
  kprintf("C -> : %d\n",memptr->c1);

  vfreemem(memptr, sizeof(struct test1struct));
  
  struct test2struct *memptr2;
  memptr2 = vgetmem(sizeof(struct test2struct));
  if(memptr2 == SYSERR){
    kprintf("ERROR VFUNC2: Cannot do vgetmem vproc2_test2\n");
    return; 
  }

  memptr2->a2=44; 
  memptr2->b2=55;
  memptr2->c2=66;
  kprintf("First -> : %d\n",memptr2->a2);
  kprintf("Second -> : %d\n",memptr2->b2);
  kprintf("Third -> : %d\n",memptr2->c2);

  vfreemem(memptr2, sizeof(struct test2struct));
}
