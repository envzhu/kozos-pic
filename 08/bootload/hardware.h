#ifndef hardware_H   /* Guard against multiple inclusion */
#define hardware_H

#if !defined(QUOTE)
#define QUOTE(arg)     #arg
#define STRVAL(arg)     QUOTE(arg)
#endif

#define DECLARE_CONFIG(x, val)                              \
   asm(".section .devcfg" STRVAL(x) ",\"ax\",@progbits");   \
   asm(".word " STRVAL(0xffffffff & val));                  \
   asm(".text");

void system_init(void);
void init_BMX(void);


#endif
