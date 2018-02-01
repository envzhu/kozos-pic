#include "intr.h"

.section .vector_soft_intr,"ax",@progbits
.set noreorder
.ent _vector_soft_intr
_vector_soft_intr:
  sw $26,-40($sp)
  sw $27,-36($sp)
  mfc0    $k1, $14   /* read EPC */
  addiu   $k1, 4     /* EPC+=4 */
  sw  $k1, -8($sp)   /* save EPC on stack */

  mfc0  $k1, $13
  andi  $k0, $k1,(0x08 << 2)
  beq $k0,$0,intr_softerr
  nop
  li $a0,SOFTVEC_TYPE_SYSCALL
  j sys_intr
  nop

intr_softerr:
  li $a0,SOFTVEC_TYPE_SOFTERR
  j sys_intr
  nop
.end _vector_soft_intr

.section .vector_8,"ax",@progbits
.set noreorder
.ent _vector_8
_vector_8:
  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_TMRINTR
  j IRQ_intr
  nop
.end _vector_8

.section .vector_30,"ax",@progbits
.set noreorder
.ent _vector_30
_vector_30:
  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_USBINTR
  j IRQ_intr
  nop
.end _vector_30

.section .vector_37,"ax",@progbits
.set noreorder
.ent _vector_37
_vector_37:
  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_SERINTR
  j IRQ_intr
  nop
.end _vector_37
