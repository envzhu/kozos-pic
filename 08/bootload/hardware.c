#include "hardware.h"



void SYSTEM_Initialize(void)
{
      unsigned int *ANSELB=0xBF886100;
      unsigned int *CFGCON=0xBF80F200;
      unsigned int *U2RXR=0xBF80FA58;
      unsigned int *RPB9R=0xBF80FB50;
      unsigned int *REFOCON=0xBF80F020;
      unsigned int *REFOTRIM=0xBF80F030;
      unsigned int *LATBINV=0xBF88613C;
      unsigned int *TRISB=0xBF886110;
      unsigned int *SYSKEY=0xBF80F230;
      unsigned int *OSCCON=0xBF80F000;
      unsigned int *OSCTUN=0xBF80F010;


      //TRISA = 0x001F;
      *TRISB = 0xEDB0;
      //ANSELA = 0x0002;
      *ANSELB = 0xE00C;
      *SYSKEY = 0x12345678;
      *SYSKEY = 0xAA996655;
      *SYSKEY = 0x556699AA;


      *OSCCON = 0x8073300;//???????
      *CFGCON&=0xFFFFDFFF;//PPS???????
      *U2RXR= 0x0004;
      *RPB9R = 0x0002;
      *CFGCON |=0x2000; // PPS????
      *SYSKEY = 0x00000000;
      *OSCTUN = 0x0;
      *REFOCON = 0x100;
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
