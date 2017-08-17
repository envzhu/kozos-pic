
#ifndef __PICINTERRUPTH__
#define __PICINTERRUPTH__

#if !defined(QUOTE)
#define QUOTE(arg)     #arg
#define STRVAL(arg)     QUOTE(arg)
#endif

#define DECLARE_INTERRUPT(x, func)                          \
   asm(" .section .vector_" STRVAL(x) ",\"ax\",@progbits"); \
   asm(".set noreorder");                                   \
   asm(".ent _vector_" STRVAL(x) );                         \
   asm("_vector_" STRVAL(x) ":");                           \
   asm("j " STRVAL(func));                                  \
   asm("nop");                                              \
   asm(".end _vector_" STRVAL(x));                          \
   asm(".globl _vector_" STRVAL(x));                        \
   asm(".text");


#endif
