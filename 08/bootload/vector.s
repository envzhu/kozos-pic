.section .vector_soft_intr,"ax",@progbits
.set noreorder
.ent _vector_soft_intr
_vector_soft_intr:
  mfc0  $k1, $13
  andi  $k0, $k1,(0x08 << 2)
  beq $k0,$0,intr_softerr
  nop
  j intr_syscall
  nop
.end _vector_soft_intr

.section .vector_37,"ax",@progbits
.set noreorder
.ent _vector_37
_vector_37:
  j intr_serintr
  nop
.end _vector_37