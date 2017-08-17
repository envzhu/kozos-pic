#ifndef _INTERRUPT_H_INCLUDED_
#define _INTERRUPT_H_INCLUDED_

/* �ʲ��ϥ��󥫡��������ץȤ��������Ƥ��륷���ܥ� */
//extern char softvec;
//#define SOFTVEC_ADDR (&softvec)

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
   asm(" .section ."STRVAL(x)",\"ax\",@progbits"); \
   asm(".set noreorder");                                   \
   asm(".ent "STRVAL(x));                         \
   asm(STRVAL(x) ":");                           \
   asm("j "STRVAL(func));                                  \
   asm("nop");                                              \
   asm(".end "STRVAL(x));                          \
   asm(".globl "STRVAL(x));                        \
   asm(".text");

/*
 * Interrupt vector numbers.
 */
#define CORETIMER_VECTOR                        0
#define CORESW0_VECTOR                          1
#define CORESW1_VECTOR                          2
#define INT0_VECTOR                             3
#define TIMER1_VECTOR                           4
#define IC1_VECTOR                              5
#define OC1_VECTOR                              6
#define INT1_VECTOR                             7
#define TIMER2_VECTOR                           8
#define IC2_VECTOR                              9
#define OC2_VECTOR                              10
#define INT2_VECTOR                             11
#define TIMER3_VECTOR                           12
#define IC3_VECTOR                              13
#define OC3_VECTOR                              14
#define INT3_VECTOR                             15
#define TIMER4_VECTOR                           16
#define IC4_VECTOR                              17
#define OC4_VECTOR                              18
#define INT4_VECTOR                             19
#define TIMER5_VECTOR                           20
#define IC5_VECTOR                              21
#define OC5_VECTOR                              22
#define SPI1_VECTOR                             23
#define I2C3_VECTOR                             24
#define SPI3_VECTOR                             24
#define UART1_VECTOR                            24
#define I2C1_VECTOR                             25
#define CN_VECTOR                               26
#define ADC_VECTOR                              27
#define PMP_VECTOR                              28
#define C1_VECTOR                               29
#define C2_VECTOR                               30
#define I2C4_VECTOR                             31
#define SPI2_VECTOR                             31
#define UART3_VECTOR                            31
#define I2C5_VECTOR                             32
#define SPI4_VECTOR                             32
#define UART2_VECTOR                            32
#define I2C2_VECTOR                             33
#define FSCM_VECTOR                             34
#define RTCC_VECTOR                             35
#define DMA0_VECTOR                             36
#define DMA1_VECTOR                             37
#define DMA2_VECTOR                             38
#define DMA3_VECTOR                             39
#define DMA4_VECTOR                             40
#define DMA5_VECTOR                             41
#define DMA6_VECTOR                             42
#define DMA7_VECTOR                             43
#define FCE_VECTOR                              44
#define USB1_VECTOR                             45
#define CAN1_VECTOR                             46
#define CAN2_VECTOR                             47
#define ETH_VECTOR                              48
#define UART4_VECTOR                            49
#define UART6_VECTOR                            50
#define UART5_VECTOR                            51

/* ���եȥ������������ߥ٥����ν����� */
int softvec_init(void);

/* ���եȥ������������ߥ٥��������� */
int softvec_setintr(softvec_type_t type, softvec_handler_t handler);

/* ���̳����ߥϥ��ɥ� */
void interrupt(softvec_type_t type, unsigned long sp);



#endif
