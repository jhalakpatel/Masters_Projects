/* page_fault_handler.S - page fault handler routine */
            .text   
pferrcode:  .long 0
            .globl  page_fault_handler,pferrcode  
page_fault_handler:
    popl    pferrcode   /* pop the error code from top of the stack */
    pushfl              /* store the flag registers                 */
    cli                 /* disable interrupts                       */
    pushal              /* save all general registers               */
    call    page_fault_handler_routine  /* call page fault handler ISR      */
    popal               /* restore general purpose register         */
    popfl               /* restore flag register                    */
    iret                /* return from interrupt handler routine    */
