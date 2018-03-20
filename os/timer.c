#include "defines.h"
#include "lib.h"
#include "intr.h"
#include "interrupt.h"
#include "timer.h"
#include "kozos.h"

#define TIMER_NUM 4

#define PIC_TIMER2 ((volatile struct pic_timer *)0xBF800800)
#define PIC_TIMER3 ((volatile struct pic_timer *)0xBF800A00)
#define PIC_TIMER4 ((volatile struct pic_timer *)0xBF800C00)
#define PIC_TIMER5 ((volatile struct pic_timer *)0xBF800E00)

struct pic_timer
{
  volatile uint32 TxCON;
  volatile uint32 TxCONCLR;
  volatile uint32 TxCONSET;
  volatile uint32 TxCONINV;
  volatile uint32 TMRx;
  volatile uint32 TMRxCLR;
  volatile uint32 TMRxSET;
  volatile uint32 TMRxINV;
  volatile uint32 PRx;
  volatile uint32 PRxCLR;
  volatile uint32 PRxSET;
  volatile uint32 PRxINV;
};

//Register TxCON value
//skip 0bit
#define PIC_TIMER_TxCON_USE_TxCS_CLOCK      (1<<1)
//skip 2bit
#define PIC_TIMER_TxCON_T32_USE_32bit_TIMER (1<<3)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_1  (0<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_2  (1<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_4  (2<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_8  (3<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_16 (4<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_32 (5<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_64 (6<<4)
#define PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_256 (7<<4)
#define PIC_TIMER_TxCON_TGATE (1<<7)
//skip 8bit
//skip 9bit
//skip 10bit
//skip 11bit
//skip 12bit
#define PIC_TIMER_TxCON_SIDL_ENABLE_SLEEP_MODE  (1<<13)
//skip 14bit
#define PIC_TIMER_TxCON_ON  (1<<15)


#define IEC0    *((volatile unsigned int *)0xBF881060)
#define IEC0CLR *((volatile unsigned int *)0xBF881064)
#define IEC0SET *((volatile unsigned int *)0xBF881068)
#define IFS0    *((volatile unsigned int *)0xBF881030)
#define IFS0CLR *((volatile unsigned int *)0xBF881034)
#define IFS0SET *((volatile unsigned int *)0xBF881038)

#define IFS_TMR2_FLAG (1<<9)
#define IFS_TMR3_FLAG (1<<14)
#define IFS_TMR4_FLAG (1<<19)
#define IFS_TMR5_FLAG (1<<24)

#define PIC_IPC2 ((volatile struct pic_ipc *)0xBF8810B0)
#define PIC_IPC3 ((volatile struct pic_ipc *)0xBF8810C0)
#define PIC_IPC4 ((volatile struct pic_ipc *)0xBF8810D0)
#define PIC_IPC5 ((volatile struct pic_ipc *)0xBF8810E0)

struct pic_ipc
{
  volatile uint32 IPCx;
  volatile uint32 IPCxCLR;
  volatile uint32 IPCxSET;
  volatile uint32 IPCxINV;
};


static struct {
  volatile struct pic_timer *tmr;
  volatile struct pic_ipc *ipc;
} regs[TIMER_NUM] = {
  { PIC_TIMER2, PIC_IPC2 },
  { PIC_TIMER3, PIC_IPC3 },
  { PIC_TIMER4, PIC_IPC4 },
  { PIC_TIMER5, PIC_IPC5 },
};

int timer_start(int index){
  volatile struct pic_timer *tmr = regs[index].tmr;
  volatile struct pic_ipc *ipc = regs[index].ipc;

  tmr->PRx = F_PBCLK/1000/32 - 1;
  tmr->TxCON = PIC_TIMER_TxCON_ON | PIC_TIMER_TxCON_TCKPS_CLOCK_PRESCALE_32 ;

  // 割込みの有効化
  ipc->IPCxSET = 0b11111;
  timer_expire(index);
  return 0;
}

/* タイマ満了したか？ */
int timer_is_expired(int index)
{
  switch(index){
    case 0:
      return IFS0 & IFS_TMR2_FLAG;
    case 1:
      return IFS0 & IFS_TMR3_FLAG;      
    case 2:
      return IFS0 & IFS_TMR4_FLAG;      
    case 3:
      return IFS0 & IFS_TMR5_FLAG;      
  }
}

/* タイマ満了処理 */
void timer_expire(int index)
{
  switch(index){
    case 0:
      IFS0CLR = IFS_TMR2_FLAG;
      break;
    case 1:
      IFS0CLR = IFS_TMR3_FLAG;
      break;
    case 2:
      IFS0CLR = IFS_TMR4_FLAG;
      break;
    case 3:
      IFS0CLR = IFS_TMR5_FLAG;
      break;
  }
}

/* タイマキャンセル */
int timer_stop(int index)
{
  volatile struct pic_timer *tmr = regs[index].tmr;
  
  timer_expire(index);
  timer_intr_disable(index);

  tmr->TxCONCLR = PIC_TIMER_TxCON_ON ;
  return 0;
}


void timer_intr_enable(int index)
{
  switch(index){
    case 0:
      IEC0SET = IFS_TMR2_FLAG;
      break;
    case 1:
      IEC0SET = IFS_TMR3_FLAG;
      break;
    case 2:
      IEC0SET = IFS_TMR4_FLAG;
      break;
    case 3:
      IEC0SET = IFS_TMR5_FLAG;
      break;
  }
}

void timer_intr_disable(int index)
{
  switch(index){
    case 0:
      IEC0CLR = IFS_TMR2_FLAG;
      break;
    case 1:
      IEC0CLR = IFS_TMR3_FLAG;
      break;
    case 2:
      IEC0CLR = IFS_TMR4_FLAG;
      break;
    case 3:
      IEC0CLR = IFS_TMR5_FLAG;
      break;
  }
}
