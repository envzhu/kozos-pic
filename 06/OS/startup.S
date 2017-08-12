   .text
   .set noreorder
   .ent _startup
   .global _startup
_startup:
  /*la $sp, _stack*/
   j main
   nop
   .end _startup
