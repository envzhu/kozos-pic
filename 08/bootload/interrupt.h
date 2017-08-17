#ifndef _INTERRUPT_H_INCLUDED_
#define _INTERRUPT_H_INCLUDED_

/* �ʲ��ϥ��󥫡��������ץȤ��������Ƥ��륷���ܥ� */
//extern char _softvec;
//#define SOFTVEC_ADDR (&_softvec)

typedef long softvec_type_t;

typedef void (*softvec_handler_t)(softvec_type_t type, unsigned long sp);

#define SOFTVECS ((softvec_handler_t *)0xA0007D00)

#define INTR_ENABLE  asm volatile ("ei $v0")
#define INTR_DISABLE asm volatile ("di $v0")

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



/* ���եȥ������������ߥ٥����ν����� */
int softvec_init(void);

/* ���եȥ������������ߥ٥��������� */
int softvec_setintr(softvec_type_t type, softvec_handler_t handler);

/* ���̳����ߥϥ��ɥ� */
void interrupt(softvec_type_t type, unsigned long sp);



#endif
