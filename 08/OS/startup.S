
.section .text,"ax",@progbits
.set noreorder
.ent _startup
.global _startup
_startup:
/*la $sp, _stack*/
 /*la $sp, _bootstack*/
j main
nop
.end _startup

.set  noat
.set noreorder
.global dispatch1
.ent dispatch1
dispatch1:
     move	$sp,$a0

     lw $31,108($sp)
     lw $30,104($sp)
     /*skip $28*/
     lw $28,100($sp)
     /*skip $27*/
     /*skip $26*/
     lw $25,96($sp)
     lw $24,92($sp)
     lw $23,88($sp)
     lw $22,84($sp)
     lw $21,80($sp)
     lw $20,76($sp)
     lw $19,72($sp)
     lw $18,68($sp)
     lw $17,64($sp)
     lw $16,60($sp)
     lw $15,56($sp)
     lw $14,52($sp)
     lw $13,48($sp)
     lw $12,44($sp)
     lw $11,40($sp)
     lw $10,36($sp)
     lw $9,32($sp)
     lw $8,28($sp)
     lw $7,24($sp)
     lw $6,20($sp)
     lw $5,16($sp)
     lw $4,12($sp)
     lw $3,8($sp)
     lw $2,4($sp)
     lw $1,($sp)

     di                      /* disable interrupts - just in case ? where enabled ? */
     ehb

     lw	$k0, 112($sp)
     mtlo	$k0       /*lo*/

     lw	$k0, 116($sp)
     mthi	$k0       /*hi*/
     addiu $sp,$sp,120
     lw	$k0, 0($sp)       /* restore EPC from stack */
     mtc0	$k0, $14


     lw	$k0, 4($sp)
      /* restore stack pointer */
     mtc0	$k0, $12

    addiu	$sp, $sp, 128

     eret
     nop
.end dispatch1

.set  noat
.set noreorder
.global dispatch2
.ent dispatch2
dispatch2:

     move	$sp,$a0

     lw $31,108($sp)
     lw $30,104($sp)
     /*skip $28*/
     lw $28,100($sp)
     /*skip $27*/
     /*skip $26*/
     lw $25,96($sp)
     lw $24,92($sp)
     lw $23,88($sp)
     lw $22,84($sp)
     lw $21,80($sp)
     lw $20,76($sp)
     lw $19,72($sp)
     lw $18,68($sp)
     lw $17,64($sp)
     lw $16,60($sp)
     lw $15,56($sp)
     lw $14,52($sp)
     lw $13,48($sp)
     lw $12,44($sp)
     lw $11,40($sp)
     lw $10,36($sp)
     lw $9,32($sp)
     lw $8,28($sp)
     lw $7,24($sp)
     lw $6,20($sp)
     lw $5,16($sp)
     lw $4,12($sp)
     lw $3,8($sp)
     lw $2,4($sp)
     lw $1,($sp)

     di                      /* disable interrupts - just in case ? where enabled ? */
     ehb

     lw	$k0, 112($sp)
     mtlo	$k0       /*lo*/

     lw	$k0, 116($sp)
     mthi	$k0       /*hi*/
     addiu $sp,$sp,120
     lw	$k0, 0($sp)       /* restore EPC from stack */
     mtc0	$k0, $14


     lw	$k0, 4($sp)
      /* restore stack pointer */
     mtc0	$k0, $12

    addiu	$sp, $sp, 128

     eret
     nop
.end dispatch2
