#include "hardware.h"
#include "io.h"

#define CFGCON    *((volatile unsigned int *)0xBF80F200)
#define U2RXR     *((volatile unsigned int *)0xBF80FA58)
#define RPB9R     *((volatile unsigned int *)0xBF80FB50)
#define OSCCON    *((volatile unsigned int *)0xBF80F000)
#define OSCTUN    *((volatile unsigned int *)0xBF80F010)
#define REFOCON   *((volatile unsigned int *)0xBF80F020)
#define REFOTRIM  *((volatile unsigned int *)0xBF80F030)
#define SYSKEY    *((volatile unsigned int *)0xBF80F230)


#define PIC_U2RXR_USE_RB8       (1<<2)
#define PIC_PORT_SET_U2TX_PIN   (1<<1)

//DEVCFG0 register
#define	PIC_DEVCFG0_RESERVED  0x6EF803E0
#define	PIC_DEVCFG0_DEBUG     (0b11<<0)
#define	PIC_DEVCFG0_JTAGEN    (1<<2)
#define	PIC_DEVCFG0_ICE_PORT_USE_PGEC/D1  (0b11<<3)
#define	PIC_DEVCFG0_ICE_PORT_USE_PGEC/D2  (0b10<<3)
#define	PIC_DEVCFG0_ICE_PORT_USE_PGEC/D3  (0b01<<3)
#define	PIC_DEVCFG0_ICE_PORT_USE_PGEC/D4  (0b00<<3)
//register 5-9bits are reserved 
#define	PIC_DEVCFG0_PROGRAM_FLASH_CODE_PROTECT_OFF (0x1FF<<10)
//register 19-23bits are reserved 
#define	PIC_DEVCFG0_BOOT_FLASH_CODE_PROTECT_OFF  (1<<24)
//register 25-27bits are reserved 
#define	PIC_DEVCFG0_CODE_PROTECT_OFF  (1<<28)
#define	PIC_DEVCFG0_ALL_CODE_PROTECT_OFF  PIC_DEVCFG0_PROGRAM_FLASH_CODE_PROTECT_OFF|PIC_DEVCFG0_BOOT_FLASH_CODE_PROTECT_OFF|PIC_DEVCFG0_CODE_PROTECT_OFF
//register 29-31bits are reserved FF
#define	PIC_DEVCFG1_RESERVED  0xFC200858

#define	PIC_DEVCFG2_RESERVED    0xFFF87888
#define	PIC_DEVCFG2_FPLLIDIV_1  (0b000<<0)
#define	PIC_DEVCFG2_FPLLIDIV_2  (0b001<<0)
#define	PIC_DEVCFG2_FPLLIDIV_3  (0b010<<0)
#define	PIC_DEVCFG2_FPLLIDIV_4  (0b011<<0)
#define	PIC_DEVCFG2_FPLLIDIV_5  (0b100<<0)
#define	PIC_DEVCFG2_FPLLIDIV_6  (0b101<<0)
#define	PIC_DEVCFG2_FPLLIDIV_10 (0b110<<0)
#define	PIC_DEVCFG2_FPLLIDIV_12 (0b111<<0)
//3bit is reserved
#define	PIC_DEVCFG2_FPLLIMUL_15 (0b000<<4)
#define	PIC_DEVCFG2_FPLLIMUL_16 (0b001<<4)
#define	PIC_DEVCFG2_FPLLIMUL_17 (0b010<<4)
#define	PIC_DEVCFG2_FPLLIMUL_18 (0b011<<4)
#define	PIC_DEVCFG2_FPLLIMUL_19 (0b100<<4)
#define	PIC_DEVCFG2_FPLLIMUL_20 (0b101<<4)
#define	PIC_DEVCFG2_FPLLIMUL_21 (0b110<<4)
#define	PIC_DEVCFG2_FPLLIMUL_24 (0b111<<4)
//7bit is reserved
#define	PIC_DEVCFG2_UPLLDIV_1   (0b000<<8)
#define	PIC_DEVCFG2_UPLLDIV_2   (0b001<<8)
#define	PIC_DEVCFG2_UPLLDIV_3   (0b010<<8)
#define	PIC_DEVCFG2_UPLLDIV_4   (0b011<<8)
#define	PIC_DEVCFG2_UPLLDIV_5   (0b100<<8)
#define	PIC_DEVCFG2_UPLLDIV_6   (0b101<<8)
#define	PIC_DEVCFG2_UPLLDIV_10  (0b110<<8)
#define	PIC_DEVCFG2_UPLLDIV_12  (0b111<<8)
//11-14bit are reserved
#define	PIC_DEVCFG2_UPLL_EN     (1<<15)
#define	PIC_DEVCFG2_FPLLODIV_1  (0b000<<16)
#define	PIC_DEVCFG2_FPLLODIV_2  (0b001<<16)
#define	PIC_DEVCFG2_FPLLODIV_3  (0b010<<16)
#define	PIC_DEVCFG2_FPLLODIV_4  (0b011<<16)
#define	PIC_DEVCFG2_FPLLODIV_5  (0b100<<16)
#define	PIC_DEVCFG2_FPLLODIV_6  (0b101<<16)
#define	PIC_DEVCFG2_FPLLODIV_10 (0b110<<16)
#define	PIC_DEVCFG2_FPLLODIV_12 (0b111<<16)



#define	PIC_DEVCFG3_RESERVED  0x0FFF0000


#define QUOTE(arg)     #arg
#define STRVAL(arg)     QUOTE(arg)

#define DECLARE_CONFIG(x, val)                              \
  asm(".section .devcfg" STRVAL(x) ",\"ax\",@progbits");    \
  asm(".word " STRVAL(0xffffffff & val));                   \
  asm(".text");

DECLARE_CONFIG(0, 0x7FFFFFFB);
DECLARE_CONFIG(1, 0xFF7FCD59);
DECLARE_CONFIG(2, PIC_DEVCFG2_RESERVED | PIC_DEVCFG2_FPLLIDIV_2 | PIC_DEVCFG2_FPLLIMUL_24 | PIC_DEVCFG2_UPLLDIV_2 | PIC_DEVCFG2_UPLL_EN | PIC_DEVCFG2_FPLLODIV_2);
DECLARE_CONFIG(3, 0xffffffff);


void system_init(void)
{
  TRISA  = 0x0;
  TRISB  = PIC_TRISB_RB8_SET_INPUT;
  ANSELB = 0x0;
  SYSKEY = 0x12345678;
  SYSKEY = 0xAA996655;
  SYSKEY = 0x556699AA;

  OSCCON = 0x8073300;
  CFGCON &=0xFFFFDFFF;
  U2RXR  = PIC_U2RXR_USE_RB8;
  RPB9R  = PIC_PORT_SET_U2TX_PIN;
  CFGCON |=0x2000;

  SYSKEY = 0x0;
  OSCTUN = 0x0;
  REFOCON  = 0x100;
  REFOTRIM = 0x0;
}



void init_BMX(uint32 addr){
  #define BMXDKPBA    *((volatile unsigned int *)0xBF882010)
  #define BMXDUDBA    *((volatile unsigned int *)0xBF882020)
  #define BMXDUPBA    *((volatile unsigned int *)0xBF882030)
  BMXDKPBA = addr & 0x1FFFF;
  BMXDUDBA = 0x10000;
  BMXDUPBA = 0x10000;
}
