.text
.set noreorder
.ent _start
.global _start
_start:
/*la $sp, _stack*/
  j main
  nop
.end _start
