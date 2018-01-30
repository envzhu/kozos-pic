#include "defines.h"
#include "serial.h"
#include "hardware.h"

#define SERIAL_SCI_NUM 2

#define PIC_SCI1 ((volatile struct pic_sci *)0xBF806100)
#define PIC_SCI2 ((volatile struct pic_sci *)0xBF806200)

struct pic_sci {
  volatile uint32 UxMODE;
  volatile uint32 UxMODECLR;
  volatile uint32 UxMODESET;
  volatile uint32 UxMODEINV;
  volatile uint32 UxSTA;
  volatile uint32 UxSTACLR;
  volatile uint32 UxSTASET;
  volatile uint32 UxSTAINV;
  volatile uint32 UxTXREG;
  volatile uint32 UxTXREGCLR;
  volatile uint32 UxTXREGSET;
  volatile uint32 UxTXREGINV;
  volatile uint32 UxRXREG;
  volatile uint32 UxRXREGCLR;
  volatile uint32 UxRXREGSET;
  volatile uint32 UxRXREGINV;
  volatile uint32 UxBRG;
  volatile uint32 UxBRGCLR;
  volatile uint32 UxBRGSET;
  volatile uint32 UxBRGINV;
};

//Interrupts Registers
#define IEC0    *((volatile unsigned int *)0xBF881060)
#define IEC0CLR *((volatile unsigned int *)0xBF881064)
#define IEC0SET *((volatile unsigned int *)0xBF881068)
#define IEC1    *((volatile unsigned int *)0xBF881070)
#define IEC1CLR *((volatile unsigned int *)0xBF881074)
#define IEC1SET *((volatile unsigned int *)0xBF881078)
#define IFS0    *((volatile unsigned int *)0xBF881030)
#define IFS0CLR *((volatile unsigned int *)0xBF881034)
#define IFS0SET *((volatile unsigned int *)0xBF881038)
#define IFS1    *((volatile unsigned int *)0xBF881040)
#define IFS1CLR *((volatile unsigned int *)0xBF881044)
#define IFS1SET *((volatile unsigned int *)0xBF881048)

//UxMODE Register
#define PIC_SCI_UxMODE_STSEL  (1<<0)
#define PIC_SCI_UxMODE_PDSEL_8bit_none_parity (0<<1)
#define PIC_SCI_UxMODE_PDSEL_8bit_odd_parity  (1<<1)
#define PIC_SCI_UxMODE_PDSEL_8bit_even_parity (2<<1)
#define PIC_SCI_UxMODE_PDSEL_9bit_none_parity (3<<1)
#define PIC_SCI_UxMODE_BRGH   (1<<3)
#define PIC_SCI_UxMODE_RXINV  (1<<4)
#define PIC_SCI_UxMODE_ABAUD  (1<<5)
#define PIC_SCI_UxMODE_LPBACK (1<<6)
#define PIC_SCI_UxMODE_WAKE   (1<<7)
#define PIC_SCI_UxMODE_UEN_USE_UxTX_UxRX              (0<<8)
#define PIC_SCI_UxMODE_UEN_USE_UxTX_UxRX_UxCTS        (1<<8)
#define PIC_SCI_UxMODE_UEN_USE_UxTX_UxRX_UxCTS_UxRTS  (2<<8)
#define PIC_SCI_UxMODE_UEN_USE_UxTX_UxRX_UxBCLK       (3<<8)
//skip 10bit  read as 0
#define PIC_SCI_UxMODE_RTSMD  (1<<11)
#define PIC_SCI_UxMODE_IREN   (1<<12)
#define PIC_SCI_UxMODE_SIDL   (1<<13)
//skip 14bit  read as 0
#define PIC_SCI_UxMODE_ON     (1<<15)

//UxSTA Register
#define PIC_SCI_UxSTA_URXDA   (1<<0)
#define PIC_SCI_UxSTA_OERR    (1<<1)
#define PIC_SCI_UxSTA_FERR    (1<<2)
#define PIC_SCI_UxSTA_PERR    (1<<3)
#define PIC_SCI_UxSTA_RIDLE   (1<<4)
#define PIC_SCI_UxSTA_ADDEN   (1<<5)
#define PIC_SCI_UxSTA_URXTISEL_EVERY  (0<<6)
#define PIC_SCI_UxSTA_URXTISEL_THREE  (2<<6)
#define PIC_SCI_UxSTA_URXTISEL_FULL   (3<<6)
#define PIC_SCI_UxSTA_TRMT    (1<<8)
#define PIC_SCI_UxSTA_UTXBF   (1<<9)
#define PIC_SCI_UxSTA_UTXEN   (1<<10)
#define PIC_SCI_UxSTA_UTXBRK  (1<<11)
#define PIC_SCI_UxSTA_URXEN   (1<<12)
#define PIC_SCI_UxSTA_UTXINV  (1<<13)
#define PIC_SCI_UxSTA_UTXISEL_BUFFER_SOME_FREE  (0<<14)
#define PIC_SCI_UxSTA_UTXISEL_EVERY_DATA        (1<<14)
#define PIC_SCI_UxSTA_UTXISEL_BUFFER_ALL_FREE   (2<<14)
#define PIC_SCI_UxSTA_UTXISEL_DONOT_USE         (3<<14)
//skip 16-23bit read only
#define PIC_SCI_UxSTA_ADM_EN  (1<<24)

//UART Interrupts Registers
#define PIC_SCI1_RECV_INTTERUPT_FLAG    (1<<8)
#define PIC_SCI1_RECV_INTTERUPT_ENABLE  (1<<8)
#define PIC_SCI1_SEND_INTTERUPT_FLAG    (1<<9)
#define PIC_SCI1_SEND_INTTERUPT_ENABLE  (1<<9)

#define PIC_SCI2_RECV_INTTERUPT_FLAG    (1<<22)
#define PIC_SCI2_RECV_INTTERUPT_ENABLE  (1<<22)
#define PIC_SCI2_SEND_INTTERUPT_FLAG    (1<<23)
#define PIC_SCI2_SEND_INTTERUPT_ENABLE  (1<<23)

static struct {
  volatile struct pic_sci *sci;
} regs[SERIAL_SCI_NUM] = {
  { PIC_SCI1 },
  { PIC_SCI2 },
};

/* デバイス初期化 */
int serial_init(int index)
{
  volatile struct pic_sci *sci = regs[index].sci;
  sci ->UxSTA   = 0x0;
  sci ->UxTXREG = 0x0;
  sci ->UxBRG   = 0x131; //UxBRG = Fpb / 16 / Baud Rate - 1;
  sci ->UxSTASET= PIC_SCI_UxSTA_URXEN | PIC_SCI_UxSTA_UTXEN;
  sci ->UxMODE  = PIC_SCI_UxMODE_ON;
  return 0;
}

/* 送信可能か？ */
int serial_is_send_enable(int index)
{
  volatile struct pic_sci *sci = regs[index].sci;
  return (!(sci->UxSTA&PIC_SCI_UxSTA_UTXBF));
}

/* １文字送信 */
int serial_send_byte(int index, unsigned char c)
{
  volatile struct pic_sci *sci = regs[index].sci;

  /* 送信可能になるまで待つ */
  while (!serial_is_send_enable(index));
  sci ->UxTXREG = c; /* 送信開始 */
  if(index==0)
    IFS1CLR=PIC_SCI1_SEND_INTTERUPT_FLAG;
  if(index==1)
    IFS1CLR=PIC_SCI2_SEND_INTTERUPT_FLAG;
  return 0;
}

/* 受信可能か？ */
int serial_is_recv_enable(int index)
{
  volatile struct pic_sci *sci = regs[index].sci;
  return (sci ->UxSTA & PIC_SCI_UxSTA_URXDA);
}

/* １文字受信 */
unsigned char serial_recv_byte(int index)
{
  volatile struct pic_sci *sci = regs[index].sci;
  unsigned char c;

  /*受信文字が来るまで待つ*/
  while(!serial_is_recv_enable(index));
  c = sci ->UxRXREG;
/*
  if ((sci ->UxSTA == PIC_SCI_UxSTA_OERR))
  {
      sci ->UxSTACLR = PIC_SCI_UxSTA_OERR;
  }*/
  if(index==0)
    IFS1CLR=PIC_SCI1_RECV_INTTERUPT_FLAG;
  
  if(index==1)
    IFS1CLR=PIC_SCI2_RECV_INTTERUPT_FLAG;

  return c;
}
