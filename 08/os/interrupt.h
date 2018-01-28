#ifndef _INTERRUPT_H_INCLUDED_
#define _INTERRUPT_H_INCLUDED_

/*以下はリンカ・スクリプトで定義してあるシンボル*/
extern char softvec;
#define SOFTVEC_ADDR (&softvec)

typedef long softvec_type_t;

typedef void (*softvec_handler_t)(softvec_type_t type, unsigned long sp);

#define SOFTVECS ((softvec_handler_t *)SOFTVEC_ADDR)

#define INTR_ENABLE  asm volatile ("ei $v0")
#define INTR_DISABLE asm volatile ("di $v0")

/* ソフトウエア・割込みベクタの初期化 */
int softvec_init(void);

/* ソフトウエア・割込みベクタの設定 */
int softvec_setintr(softvec_type_t type, softvec_handler_t handler);

/* 共通割込みハンドラ */
void interrupt(softvec_type_t type, unsigned long sp);

#endif
