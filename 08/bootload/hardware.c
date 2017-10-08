#include "hardware.h"

#define ANSELB    ((unsigned int *)0xBF886100)
#define TRISB     ((unsigned int *)0xBF886110)
#define CFGCON    ((unsigned int *)0xBF80F200)
#define U2RXR     ((unsigned int *)0xBF80FA58)
#define RPB9R     ((unsigned int *)0xBF80FB50)
#define OSCCON    ((unsigned int *)0xBF80F000)
#define OSCTUN    ((unsigned int *)0xBF80F010)
#define REFOCON   ((unsigned int *)0xBF80F020)
#define REFOTRIM  ((unsigned int *)0xBF80F030)
#define SYSKEY    ((unsigned int *)0xBF80F230)


#define PIC_TRISB_RB0_SET_INPUT (1<<0)
#define PIC_TRISB_RB1_SET_INPUT (1<<1)
#define PIC_TRISB_RB2_SET_INPUT (1<<2)
#define PIC_TRISB_RB3_SET_INPUT (1<<3)
#define PIC_TRISB_RB4_SET_INPUT (1<<4)
#define PIC_TRISB_RB5_SET_INPUT (1<<5)
#define PIC_TRISB_RB6_SET_INPUT (1<<6)
#define PIC_TRISB_RB7_SET_INPUT (1<<7)
#define PIC_TRISB_RB8_SET_INPUT (1<<8)
#define PIC_TRISB_RB9_SET_INPUT (1<<9)
#define PIC_TRISB_RB10_SET_INPUT (1<<10)
#define PIC_TRISB_RB11_SET_INPUT (1<<11)
#define PIC_TRISB_RB12_SET_INPUT (1<<12)
#define PIC_TRISB_RB13_SET_INPUT (1<<13)
#define PIC_TRISB_RB14_SET_INPUT (1<<14)
#define PIC_TRISB_RB15_SET_INPUT (1<<15)

#define PIC_U2RXR_USE_RB8       (1<<2)
#define PIC_PORT_SET_U2TX_PIN   (1<<1)

DECLARE_CONFIG(0, 0x7FFFFFFB);
DECLARE_CONFIG(1, 0xFF7FCD59);
DECLARE_CONFIG(2, 0xFFF9F9F9);
DECLARE_CONFIG(3, 0xFFFFFFFF);


void system_init(void)
{
  //TRISA = 0x001F;
  *TRISB  = PIC_TRISB_RB8_SET_INPUT;
  *ANSELB = 0x0;
  *SYSKEY = 0x12345678;
  *SYSKEY = 0xAA996655;
  *SYSKEY = 0x556699AA;

  *OSCCON = 0x8073300;
  *CFGCON &=0xFFFFDFFF;
  *U2RXR  = PIC_U2RXR_USE_RB8;
  *RPB9R  = PIC_PORT_SET_U2TX_PIN;
  *CFGCON |=0x2000;

  *SYSKEY = 0x0;
  *OSCTUN = 0x0;
  *REFOCON  = 0x100;
  *REFOTRIM = 0x0;
}


void init_BMX(void){
    unsigned int *BMXDKPBA=0xBF882010;
    unsigned int *BMXDUDBA=0xBF882020;
    unsigned int *BMXDUPBA=0xBF882030;
    *BMXDKPBA=0xC000;
    *BMXDUDBA=0x10000;
    *BMXDUPBA=0x10000;
}
