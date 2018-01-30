   .section .start,"ax",@progbits
   .set noreorder
   .ent _start
_start:
    li $sp, 0xA0010000
    /* la $gp, _gp*/

    jal main
    nop

    1:
    j 1b
    nop

   .end _start
   .globl _start
