
.section .text,"ax",@progbits
.set noreorder
.ent _start
.global _start
_start:
  /* set vector address */
  la $t1, _ebase_address
  mtc0 $t1, $15, 1        # EBASE register

  /* set vector spacing */
  la $t1, _vector_spacing
  li $t2, 0
  ins $t2, $t1, 5, 5
  mtc0 $t2, $12, 1        # INTCTL register

  la $sp, _bootstack
  j main
  nop
.end _start

.set  noat
.set noreorder
.global dispatch
.ent dispatch
dispatch:
  /* 今後、多重割り込みに対応した時の為に、一応割り込みを禁止にする */
  di

  /*stall until execution hazards are cleared */
  ehb

  lw	$sp,0($a0)

  /* restore STATUS from stack */
  lw	$k0, 136($sp)
  mtc0	$k0, $12

  /* restore EPC from stack */
  lw	$k0, 132($sp)
  mtc0	$k0, $14
  
  /* restore hi from stack */
  lw	$k0, 128($sp)
  mthi	$k0
  
  /* restore lo from stack */
  lw	$k0, 124($sp)
  mtlo	$k0

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

  addiu	$sp, $sp, 140

  eret
  nop
.end dispatch
