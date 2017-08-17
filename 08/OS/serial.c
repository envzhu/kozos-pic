#include "defines.h"
#include "serial.h"

#define PIC_SCI_UxSTA_URXDA (1<<1)
#define PIC_SCI_UxSTA_OERR (1<<2)
#define PIC_SCI_UxSTA_FERR (1<<3)
#define PIC_SCI_UxSTA_PERR (1<<4)
#define PIC_SCI_UxSTA_RIDLE (1<<5)
#define PIC_SCI_UxSTA_ADDEN (1<<6)
#define PIC_SCI_UxSTA_URXTISEL_EVERY (0<<7)
#define PIC_SCI_UxSTA_URXTISEL_THREE (2<<7)
#define PIC_SCI_UxSTA_URXTISEL_FULL (3<<7)
#define PIC_SCI_UxSTA_TRMT (1<<8)
#define PIC_SCI_UxSTA_UTXBF (1<<9)
#define PIC_SCI_UxSTA_UTXEN (1<<10)
#define PIC_SCI_UxSTA_UTXBRK (1<<11)
#define PIC_SCI_UxSTA_URXEN (1<<12)
#define PIC_SCI_UxSTA_UTXINV (1<<13)
#define PIC_SCI_UxSTA_UTXISEL_BUFFER_SOME_FREE (0<<14)
#define PIC_SCI_UxSTA_UTXISEL_EVERY_DATA (1<<14)
#define PIC_SCI_UxSTA_UTXISEL_BUFFER_ALL_FREE (2<<14)
#define PIC_SCI_UxSTA_UTXISEL_DONOT_USE (3<<14)

/* �?����ǽ���� */
int serial_is_send_enable(int index)
{
  unsigned int *U2STA=0xBF806210;
  return (!(*U2STA&PIC_SCI_UxSTA_UTXBF));
}


/* ��ʸ�?�?�� */
int serial_send_byte(int index, unsigned char c)
{
  unsigned int *U2TXREG=0xBF806220;

  while (!serial_is_send_enable(index));
  *U2TXREG = c;
  return 0;
}

/* ���M�\���H */
int serial_is_recv_enable(int index)
{
  unsigned int *U2STA=0xBF806210;
return (!(*U2STA&PIC_SCI_UxSTA_URXDA));

}

/* �P�������M */
unsigned char serial_recv_byte(int index)
{
    unsigned int *p_U2RXREG=0xBF806230;
    unsigned int *p_U2STA=0xBF806210;
    while(!(*p_U2STA&1))
    {
    }
/*
    if ((U2STAbits.OERR == 1))
    {
        U2STAbits.OERR = 0;
    }*/
    return *p_U2RXREG;
}
/* ����������ͭ������ */
int serial_intr_is_recv_enable(int index)
{
  unsigned int *IEC1=0xBF881070;
  return (*IEC1 & 0x400000) ? 1 : 0;
}

/* ����������ͭ���� */
void serial_intr_recv_enable(int index)
{
    unsigned int *IEC1SET=0xBF881078;
    *IEC1SET=0x400000;
}

/* ����������̵���� */
void serial_intr_recv_disable(int index)
{
  unsigned int *IEC1CLR=0xBF881074;
  *IEC1CLR=0x400000;
}
