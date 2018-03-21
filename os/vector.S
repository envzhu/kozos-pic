#include "intr.h"

.section .vector_soft_intr,"ax",@progbits
.set noreorder
.ent _vector_general_exception
_vector_general_exception:
  rdpgpr  $sp, $sp
  sw $4,-128($sp)

  sw $27,-40($sp)
  sw $26,-36($sp)

  mfc0  $k1, $13
  andi  $k0, $k1,(0x08 << 2)
  beq $k0,$0,intr_cpu_err
  nop
  
  li $a0,SOFTVEC_TYPE_SYSCALL
  j _kernel_intr
  nop

intr_cpu_err:
  li $a0,SOFTVEC_TYPE_CPU_ERROR
  j _kernel_intr
  nop
.end _vector_general_exception

.section .vector_8,"ax",@progbits
.set noreorder
.ent _vector_8
_vector_8:
  rdpgpr  $sp, $sp

  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_TMRINTR
  j _user_intr
  nop
.end _vector_8

.section .vector_37,"ax",@progbits
.set noreorder
.ent _vector_37
_vector_37:
  rdpgpr  $sp, $sp

  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_SERINTR
  j _user_intr
  nop
.end _vector_37
