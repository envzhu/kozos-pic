
.section .text,"ax",@progbits
.set noreorder
.ent _startup
.global _startup
_startup:
  la $sp, _bootstack
  j main
  nop
.end _startup

.set  noat
.set noreorder
.global dispatch
.ent dispatch
dispatch:
    lw	$sp,0($a0)

    lw $31,120($sp)
    lw $30,116($sp)
    /*lw $29,112($sp)*/
    lw $28,108($sp)
    lw $27,104($sp)
    lw $26,100($sp)
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

    di
    ehb

    lw	$k0, 124($sp)
    mtlo	$k0       /*lo*/

    lw	$k0, 128($sp)
    mthi	$k0       /*hi*/

    lw	$k0, 132($sp)       /* restore EPC from stack */
    mtc0	$k0, $14


    lw	$k0, 136($sp)
    /* restore stack pointer */
    mtc0	$k0, $12

    addiu	$sp, $sp, 140
    eret
    nop
.end dispatch
