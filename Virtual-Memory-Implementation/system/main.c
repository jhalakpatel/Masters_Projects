/*  main.c  - main */

#include <xinu.h>
#include <stdio.h>

process	main(void)
{
	/* Start the network */
	/* DO NOT REMOVE OR COMMENT THIS CALL */
	netstart();

	/* Initialize the page server */
	/* DO NOT REMOVE OR COMMENT THIS CALL */
	psinit();

	kprintf("=== Lab5 ===\n");

    /*
     *  Physical Address - 0x0000-0000 to 0x00100-0000
     *  Device Address - 0x0x90000000 to 0x90400000
     */

    /* access physical address */
    kprintf("===== ACCESS PHYSICAL ADDRESS =====\n");
    char *phyaddr = (char *)0xA0A0A0;
    *(uint32*)phyaddr = 0xDEADBEEF; 
    kprintf("physical address read : %x\n", *(uint32*)phyaddr);

    /* access device address */
    kprintf("===== ACCESS DEVICE ADDRESS =====\n");
    char *deviceaddr = (char *)0x90100000;
    *(uint32*)deviceaddr = 0xDEADBEEF; 
    kprintf("device address read : %x\n", *(uint32*)deviceaddr);

    /* vcreate : process */
    pid32 vpid = vcreate(testfunc, 1024 , 100, 20, "testfunc1", NULL);

    resume(vpid);

    /* chain of vgetmem and vfreemem */


    /* make two process writing to same vaddr , but should not conflict */


    /* page replacement policy */

    kprintf("Main Done\n");

	return OK;
}
