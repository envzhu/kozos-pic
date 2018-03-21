#include "intr.h"

.section .text,"ax",@progbits
.set noat
.set noreorder
.global _kernel_intr
_kernel_intr:
  addiu   $sp, $sp, -140  /* 35 words space on stack */

  sw $31,120($sp)
  sw $30,116($sp)
  /*sw $29,112($sp)*/
  sw $28,108($sp)
  /*sw $27,104($sp)*/
  /*sw $26,100($sp)*/
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
  /*sw $4,12($sp)*/
  sw $3,8($sp)
  sw $2,4($sp)
  sw $1,($sp)

  /* save lo on stack */
  mflo    $k0
  sw      $k0, 124($sp)

  /* save hi on stack */
  mfhi    $k0
  sw      $k0, 128($sp)
  
  /* save EPC on stack */
  mfc0    $k1, $14
  addiu   $k1, 4     /* EPC+=4 */
  sw      $k1, 132($sp)

  /* save STATUS on stack */
  mfc0    $k1, $12
  sw      $k1, 136($sp)

  move	$fp,$sp

	/*li $a0,SOFTVEC_EACH_TYPE*/
  move $a1,$sp
  la $sp, _intrstack
	jal	interrupt
  nop

  /*戻ってこない*/

.section .text,"ax",@progbits
.set noat
.set noreorder
.global _user_intr
_user_intr:
  addiu   $sp, $sp, -140  /* 35 words space on stack */

  sw $31,120($sp)
  sw $30,116($sp)
  /*sw $29,112($sp)*/
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
  /*sw $4,12($sp)*/
  sw $3,8($sp)
  sw $2,4($sp)
  sw $1,($sp)

  /* save lo on stack */
  mflo    $k0
  sw      $k0, 124($sp)

  /* save hi on stack */
  mfhi    $k0
  sw      $k0, 128($sp)
  
  /* save EPC on stack */
  mfc0    $k1, $14
  sw      $k1, 132($sp)

  /* save STATUS on stack */
  mfc0    $k1, $12
  sw      $k1, 136($sp)

  move	$fp,$sp

	/*li $a0,SOFTVEC_EACH_TYPE*/
  move $a1,$sp
  la $sp, _intrstack
	jal	interrupt
  nop

  /*戻ってこない*/
