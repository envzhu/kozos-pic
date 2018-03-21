#include "intr.h"

.section .vector_general_exception,"ax",@progbits
.set noreorder
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


.section .vector_8,"ax",@progbits
.set noreorder
  rdpgpr  $sp, $sp

  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_TMRINTR
  j _user_intr
  nop


.section .vector_37,"ax",@progbits
.set noreorder
  rdpgpr  $sp, $sp

  sw $4,-128($sp)
  li $a0,SOFTVEC_TYPE_SERINTR
  j _user_intr
  nop
