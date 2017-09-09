/* paging related registers : function enables reading and setting of cr0, cr1, cr3 and cr4 registers
 * to enable paging capabilities 
 */

#include <xinu.h>


unsigned long tmp;

/* setting cr0 */
void set_cr0(unsigned long n) {

  intmask mask;
  mask = disable();

  tmp = n;
  asm ("pushl %eax");
  asm ("movl tmp, %eax");		/* mov (move) value at tmp into %eax register."l" signifies long (see docs on gas assembler)	*/
  //kprintf("Setting CR0\n");
  asm ("movl %eax, %cr0");
  asm ("popl %eax");
  restore(mask);
}

/* reading cr0 */
unsigned long read_cr0(void) {

  intmask mask;
  mask = disable();

  kprintf("Reading CR0\n");

  unsigned long local_tmp;

  asm("pushl %eax");
  asm("movl %cr0, %eax");
  asm("movl %eax, tmp");
  asm("popl %eax");

  local_tmp = tmp;

  restore(mask);

  return local_tmp;
}

/* setting cr1 */
void set_cr1(unsigned long n) {

  intmask mask;
  mask = disable();

  tmp = n;
  asm("pushl %eax");
  asm("movl tmp, %eax");		/* mov (move) value at tmp into %eax register."l" signifies long (see docs on gas assembler)	*/
  asm("movl %eax, %cr1");
  asm("popl %eax");

  restore(mask);
}

/* reading cr1 */
unsigned long read_cr1(void) {

  intmask mask;
  mask = disable();

  unsigned long local_tmp;

  asm("pushl %eax");
  asm("movl %cr1, %eax");
  asm("movl %eax, tmp");
  asm("popl %eax");

  local_tmp = tmp;

  restore(mask);

  return local_tmp;
}
/* setting cr2 */
void set_cr2(unsigned long n) {

  intmask mask;
  mask = disable();

  tmp = n;
  asm("pushl %eax");
  asm("movl tmp, %eax");		/* mov (move) value at tmp into %eax register."l" signifies long (see docs on gas assembler)	*/
  asm("movl %eax, %cr2");
  asm("popl %eax");

  restore(mask);
}

/* reading cr2 */
unsigned long read_cr2(void) {

  intmask mask;
  mask = disable();

  unsigned long local_tmp;

  asm("pushl %eax");
  asm("movl %cr2, %eax");
  asm("movl %eax, tmp");
  asm("popl %eax");

  local_tmp = tmp;

  restore(mask);

  return local_tmp;
}

/* setting cr3 */
void set_cr3(unsigned long n) {

  intmask mask;
  mask = disable();

  tmp = n;
  asm("pushl %eax");
  asm("movl tmp, %eax");		/* mov (move) value at tmp into %eax register."l" signifies long (see docs on gas assembler)	*/
  asm("movl %eax, %cr3");
  asm("popl %eax");

  restore(mask);
}

/* reading cr3 */
unsigned long read_cr3(void) {

  intmask mask;
  mask = disable();

  unsigned long local_tmp;

  asm("pushl %eax");
  asm("movl %cr3, %eax");
  asm("movl %eax, tmp");
  asm("popl %eax");

  local_tmp = tmp;

  restore(mask);

  return local_tmp;
}

/* setting cr4 */
void set_cr4(unsigned long n) {

  intmask mask;
  mask = disable();

  tmp = n;
  asm("pushl %eax");
  asm("movl tmp, %eax");		/* mov (move) value at tmp into %eax register."l" signifies long (see docs on gas assembler)	*/
  asm("movl %eax, %cr4");
  asm("popl %eax");

  restore(mask);
}

/* reading cr4 */
unsigned long read_cr4(void) {

  intmask mask;
  mask = disable();

  unsigned long local_tmp;

  asm("pushl %eax");
  asm("movl %cr4, %eax");
  asm("movl %eax, tmp");
  asm("popl %eax");

  local_tmp = tmp;

  restore(mask);

  return local_tmp;
}

/* enable paging */
void enable_paging() {
    unsigned long ctrl_reg = read_cr0();   /* read cr0 */

    kprintf("ctrl reg : %x\n",ctrl_reg);

    ctrl_reg |= 0x1;    /* set LSB and MSB to "1" */
    
    set_cr0(ctrl_reg);

    kprintf("ctrl reg : %x\n",ctrl_reg);
    
    ctrl_reg |= 0x1 << 31;

    set_cr0(ctrl_reg);

    ctrl_reg = read_cr0();   /* read cr0 */
    
    kprintf("ctrl reg : %x\n",ctrl_reg);
}

/* set_PDBR : setting page directory base register */
void set_PDBR(unsigned long pdbr_reg) {
    /* extract 20 MSB to get the page directory offset */
    pdbr_reg = pdbr_reg << 12;
   
    //kprintf("pdbr reg : %x\n",pdbr_reg);
    
    unsigned long cr_temp = read_cr3();

    //kprintf("cr3 before : %x\n", cr_temp);

    set_cr3(pdbr_reg);

    cr_temp = read_cr3();

    //kprintf("cr3 after : %x  ====  pdbr_reg : %x\n", cr_temp, pdbr_reg);

}
