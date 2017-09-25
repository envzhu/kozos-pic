
#ifndef __PICCONFIGH__
#define __PICCONFIGH__

#if !defined(QUOTE)
#define QUOTE(arg)     #arg
#define STRVAL(arg)     QUOTE(arg)
#endif

#define DECLARE_CONFIG(x, val)                              \
   asm(".section .devcfg" STRVAL(x) ",\"ax\",@progbits");   \
   asm(".word " STRVAL(0xffffffff & val));                  \
   asm(".text");
#endif
