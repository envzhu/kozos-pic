#include "hardware.h"
#include "io.h"

#define CFGCON    *((volatile unsigned int *)0xBF80F200)
#define SYSKEY    *((volatile unsigned int *)0xBF80F230)
#define INTCONSET *((volatile unsigned int *)0xBF881008)

#define U1RXR     *((volatile unsigned int *)0xBF80FA50)
#define RPB3R     *((volatile unsigned int *)0xBF80FB38)
#define U2RXR     *((volatile unsigned int *)0xBF80FA58)
#define RPB9R     *((volatile unsigned int *)0xBF80FB50)

static inline void SYSKEY_UNLOCK(void)
{
	SYSKEY = 0x12345678;
  SYSKEY = 0xAA996655;
  SYSKEY = 0x556699AA;
}

#define SYSKEY_LOCK()		SYSKEY = 0x0
#define IOLOCK_UNLOCK()	CFGCON &=0xFFFFDFFF
#define IOLOCK_LOCK()		CFGCON |=0x2000


void system_init(void)
{
  TRISA  = 0x0;
  TRISB  = PIC_TRISB_RB8_SET_INPUT | PIC_TRISB_RB2_SET_INPUT;
  ANSELB = 0x0;

	SYSKEY_UNLOCK();
	IOLOCK_UNLOCK();

  //Init UART1 io
  U1RXR = 0x0004;	//RB2->U1RX;
  RPB3R = 0x0001;	//RB3->U1TX;
  
	//Init UART2 io
  U2RXR = 0b100;	//RB8->U2RX
  RPB9R = 0b10;		//RB9->U2TX

	IOLOCK_LOCK();
	SYSKEY_LOCK();
}



void init_BMX(uint32 addr){
  #define BMXDKPBA    *((volatile unsigned int *)0xBF882010)
  #define BMXDUDBA    *((volatile unsigned int *)0xBF882020)
  #define BMXDUPBA    *((volatile unsigned int *)0xBF882030)

  BMXDKPBA = addr & 0x1FFFF;
  BMXDUDBA = 0x10000;
  BMXDUPBA = 0x10000;
}
