   .section .start,"ax",@progbits
   .set noreorder
   .ent _start
_start:
    li $sp, _stack
    /* la $gp, _gp*/

    jal main
    nop

    1:
    j 1b
    nop

   .end _start
   .globl _start
