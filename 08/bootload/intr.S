#include "intr.h"

.section .text
.set noreorder
.global intr_syscall

intr_syscall:


rdpgpr  $sp, $sp
mfc0    $k0, $13        /* read CAUSE register */
mfc0    $k1, $14        /* read EPC (Exception Program Counter) register */
addiu   $sp, $sp, -140  /* 30 (!) words space on stack */
addiu   $k1, 4
sw      $k1, 132($sp)   /* save EPC (Exception Program Counter) on stack */
mfc0    $k1, $12        /* read STATUS register */
srl     $k0, $k0, 10    /* align RIPL (Requested Priority Level bits) to bit 0 */
sw      $k1, 136($sp)   /* save STATUS on stack */

ins     $k1, $k0, 10, 6 /* insert RIPL (Requested Priority Level bits) to IPL field */
mflo    $k0
sw      $k0, 124($sp)

mfhi    $k0
sw      $k0, 128($sp)
ins     $k1, $0, 1, 4
mtc0    $k1, $12        /* write STATUS register */



sw $31,120($sp)
sw $30,116($sp)
sw $29,112($sp)
sw $28,108($sp)
sw $27,104($sp)
sw $26,100($sp)
sw $25,96($sp)
sw $24,92($sp)
sw $23,88($sp)
sw $22,84($sp)
sw $21,80($sp)
sw $20,76($sp)
sw $19,72($sp)
sw $18,68($sp)
sw $17,64($sp)
sw $16,60($sp)
sw $15,56($sp)
sw $14,52($sp)
sw $13,48($sp)
sw $12,44($sp)
sw $11,40($sp)
sw $10,36($sp)
sw $9,32($sp)
sw $8,28($sp)
sw $7,24($sp)
sw $6,20($sp)
sw $5,16($sp)
sw $4,12($sp)
sw $3,8($sp)
sw $2,4($sp)
sw $1,($sp)



  move	$fp,$sp

  li $a0,SOFTVEC_TYPE_SYSCALL
  move $a1,$sp

  la $sp, _intrstack


	jal	interrupt
  nop


/*戻ってこない*/
  move	$sp,$fp

  lw $31,120($sp)
  lw $30,116($sp)
  lw $29,112($sp)
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



  di                      /* disable interrupts - just in case ? where enabled ? */
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


.set noreorder
.global intr_serintr
intr_serintr:
rdpgpr  $sp, $sp
mfc0    $k0, $13        /* read CAUSE register */
mfc0    $k1, $14        /* read EPC (Exception Program Counter) register */
addiu   $sp, $sp, -140  /* 30 (!) words space on stack */
sw      $k1, 132($sp)   /* save EPC (Exception Program Counter) on stack */
mfc0    $k1, $12        /* read STATUS register */
srl     $k0, $k0, 10    /* align RIPL (Requested Priority Level bits) to bit 0 */
sw      $k1, 136($sp)   /* save STATUS on stack */

ins     $k1, $k0, 10, 6 /* insert RIPL (Requested Priority Level bits) to IPL field */
mflo    $k0
sw      $k0, 124($sp)

mfhi    $k0
sw      $k0, 128($sp)
ins     $k1, $0, 1, 4
mtc0    $k1, $12        /* write STATUS register */

  sw $31,120($sp)
  sw $30,116($sp)
  sw $29,112($sp)
  sw $28,108($sp)
  sw $27,104($sp)
  sw $26,100($sp)
  sw $25,96($sp)
  sw $24,92($sp)
  sw $23,88($sp)
  sw $22,84($sp)
  sw $21,80($sp)
  sw $20,76($sp)
  sw $19,72($sp)
  sw $18,68($sp)
  sw $17,64($sp)
  sw $16,60($sp)
  sw $15,56($sp)
  sw $14,52($sp)
  sw $13,48($sp)
  sw $12,44($sp)
  sw $11,40($sp)
  sw $10,36($sp)
  sw $9,32($sp)
  sw $8,28($sp)
  sw $7,24($sp)
  sw $6,20($sp)
  sw $5,16($sp)
  sw $4,12($sp)
  sw $3,8($sp)
  sw $2,4($sp)
  sw $1,($sp)

  move	$fp,$sp

	li $a0,SOFTVEC_TYPE_SERINTR
  move $a1,$sp

  la $sp, _intrstack



	jal	interrupt
  nop

  move	$sp,$fp

  lw $31,120($sp)
  lw $30,116($sp)
  lw $29,112($sp)
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

  di                      /* disable interrupts - just in case ? where enabled ? */
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
