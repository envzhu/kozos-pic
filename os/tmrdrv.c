#include "defines.h"
#include "kozos.h"
#include "intr.h"
#include "interrupt.h"
#include "timer.h"
#include "lib.h"
#include "tmrdrv.h"

#define TMRDRV_DEVICE_NUM 4
#define TMRDRV_CMD_USE    'u' /* タイマ・ドライバの使用開始 */
#define TMRDRV_CMD_START  's' /* タイマのスタート */
#define TMRDRV_CMD_CANCEL 'c' /* タイマのキャンセル */

typedef struct _tmrbuf_t {
	struct _tmrbuf_t *prev;
	struct _tmrbuf_t *next;
	int index;
	kz_thread_id_t id;
	int cn_msec;
	int buf_msec;
}tmrbuf_t;

static struct tmrdev_t {
	tmrbuf_t *head;
	tmrbuf_t *tail;
} tmrdev[TMRDRV_DEVICE_NUM];



static void tmr_start(int index, kz_thread_id_t id, int msec)
{
	tmrbuf_t *p_tmrbuf = kz_kmalloc(sizeof(*p_tmrbuf));

	#ifdef DEBUG1
		puts("timer ");
		putdval(msec, 0);
    puts("msec start\n");
	#endif

	p_tmrbuf->index = index;
	p_tmrbuf->id = id;
	p_tmrbuf->cn_msec = msec;
	p_tmrbuf->buf_msec = msec;
	if(tmrdev[index].tail){
		tmrdev[index].tail->next = p_tmrbuf;
		p_tmrbuf->prev = tmrdev[index].tail;
	}else{
		timer_start(index);
    timer_intr_enable(index);
		tmrdev[index].head = p_tmrbuf;
	}
	p_tmrbuf->next = NULL;
	tmrdev[index].tail = p_tmrbuf;
}

void tmr_stop(tmrbuf_t*p_timerbuf)
{
	if(tmrdev[p_timerbuf->index].head == p_timerbuf){
		if(p_timerbuf->next == NULL){
			timer_stop(p_timerbuf->index);
      timer_intr_disable(p_timerbuf->index);
			tmrdev[p_timerbuf->index].head = NULL;
			tmrdev[p_timerbuf->index].tail = NULL;
		}else{
			tmrdev[p_timerbuf->index].head = p_timerbuf->next;
			tmrdev[p_timerbuf->index].head->prev = NULL;
		}
	}else if(tmrdev[p_timerbuf->index].tail == p_timerbuf){
		tmrdev[p_timerbuf->index].tail = p_timerbuf->prev;
		tmrdev[p_timerbuf->index].tail->next=NULL;
	}else{
		p_timerbuf->prev->next = p_timerbuf->next;
		p_timerbuf->next->prev = p_timerbuf->prev;
	}
	kz_wakeup(p_timerbuf->id);
	kz_kmfree(p_timerbuf);
}

static tmrbuf_t *tmrbuf_find(kz_thread_id_t id)
{
	int i;
  struct tmrdev_t *tmr;
	tmrbuf_t*p_timerbuf;
	
	for (i = 0; i < TMRDRV_DEVICE_NUM; i++) {
    tmr = &tmrdev[i];
    if (tmr->head) {
			p_timerbuf = tmr->head;
			do{
	if(p_timerbuf->id == id){
		return p_timerbuf;
	}
			}while((p_timerbuf->next == NULL) && (p_timerbuf = p_timerbuf->next));
    }
	}
	return NULL;
}

/*
 * 以下は割込みハンドラから呼ばれる割込み処理であり，非同期で
 * 呼ばれるので，ライブラリ関数などを呼び出す場合には注意が必要．
 * 基本として，以下のいずれかに当てはまる関数しか呼び出してはいけない．
 * ・再入可能である．
 * ・スレッドから呼ばれることは無い関数である．
 * ・スレッドから呼ばれることがあるが，割込み禁止で呼び出している．
 * また非コンテキスト状態で呼ばれるため，システム・コールは利用してはいけない．
 * (サービス・コールを利用すること)
 */
static inline void tmrdrv_intrproc(struct tmrdev_t *tmr)
{
	tmrbuf_t*p_timerbuf = tmr->head;
  
	timer_expire(p_timerbuf->index);
	do{
		p_timerbuf->cn_msec--;
		if(p_timerbuf->cn_msec == 0){
			#ifdef DEBUG1
        puts("thread id : ");
        putxval(p_timerbuf->id, 0);
				puts(" timer expired\n");
			#endif
			p_timerbuf->cn_msec = p_timerbuf->buf_msec;
			kx_wakeup(p_timerbuf->id);
		}
	}while((p_timerbuf->next != NULL) && (p_timerbuf = p_timerbuf->next));
}


/* 割込みハンドラ */
static void tmrdrv_intr(void)
{
  int i;
  struct tmrdev_t *tmr;

  for (i = 0; i < TMRDRV_DEVICE_NUM; i++) {
    tmr = &tmrdev[i];
    if (tmr->head) {
      if (timer_is_expired(i))
	/* 割込みがあるならば，割込み処理を呼び出す */
	tmrdrv_intrproc(tmr);
    }
  }
}

static int tmrdrv_init(void)
{
  memset(tmrdev, 0, sizeof(tmrdev));
  return 0;
}

/* スレッドからの要求を処理する */
static int tmrdrv_command(int index, kz_thread_id_t id, int size, unsigned char *command)
{
  switch (command[0]) {
	case TMRDRV_CMD_START:
		INTR_DISABLE;//念のため、割り込み禁止
		tmr_start(index, id, (command[1]<<24)|(command[2]<<16)|(command[3]<<8)|command[4]); /* タイマの開始 */
		INTR_ENABLE;
		break;

	case TMRDRV_CMD_CANCEL:
		INTR_DISABLE;
		tmr_stop(tmrbuf_find(id));
		INTR_ENABLE;
		break;
  default:
    break;
  }

  return 0;
}

int tmrdrv_main(int argc, char *argv[])
{
  int size, index;
  kz_thread_id_t id;
  unsigned char *p;

  tmrdrv_init();
	kz_setintr(SOFTVEC_TYPE_TMRINTR, tmrdrv_intr); /* 割込みハンドラ設定 */

  while (1) {
    id = kz_recv(MSGBOX_ID_TMRDRV, &size, &p);
    index = p[0] - '0';
    tmrdrv_command(index, id, size - 1, p + 1);
    kz_kmfree(p);
  }

  return 0;
}

void send_tmrset(int index, unsigned int msec){
  unsigned char *p = kz_kmalloc(6);

  p[0] = '0' + index;
  p[1] = TMRDRV_CMD_START;
  p[2] = msec>>24;
  p[3] = (msec>>16)&0xFF;
  p[4] = (msec>>8)&0xFF;
  p[5] = msec&0xFF;
  kz_send(MSGBOX_ID_TMRDRV, 6, p);
}

void send_tmrstop(void){
  char *p;

  p = kz_kmalloc(2);
  p[0] = '\0';
  p[1] = TMRDRV_CMD_CANCEL;
  kz_send(MSGBOX_ID_TMRDRV, 2, p);
}

inline void tmr_sleep(int index, int msec){
	send_tmrset(index, msec);
	kz_sleep();
	send_tmrstop();
}

inline void tmr_interval(int index, int msec){
	send_tmrset(index, msec);
}
