#include "defines.h"
#include "kozos.h"
#include "intr.h"
#include "interrupt.h"
#include "timer.h"
#include "lib.h"
#include "tmrdrv.h"

typedef struct timerbuf {
  struct timerbuf *prev;
  struct timerbuf *next;
  kz_msgbox_id_t id; /* タイマ満了時のメッセージ送信先 */
  int index;
	char msec;
}timerbuf;

static struct tmrdev {
	struct timerbuf *head;
	struct timerbuf *tail;
} tmrdev[TMRDRV_DEVICE_NUM];

#ifdef TMR_TEST
static struct tmrreg {
  kz_thread_id_t id; /* タイマを利用するスレッド */
  int index;         /* 利用するタイマーの番号 */
} tmrreg[TMRDRV_DEVICE_NUM];
#endif

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


/* 割込みハンドラ */
static void tmrdrv_intr(void)
{
	timerbuf *p_timerbuf = tmrdev[TMR_DEFAULT_DEVICE].head;
	timer_expire(p_timerbuf->index);
	do{
		p_timerbuf->msec--;
		if(p_timerbuf->msec==0){
			tmr_stop(p_timerbuf);
			kx_send(MSGBOX_ID_TMRINPUT, 0, NULL);
		}
	}while((p_timerbuf->next!=NULL)&&(p_timerbuf=p_timerbuf->next));

}

static int tmrdrv_init(void)
{
  memset(tmrdev, 0, sizeof(tmrdev));
  return 0;
}

static void tmr_start(int index, kz_thread_id_t id, char msec)
{
	timerbuf * tmrbuf = kx_kmalloc(sizeof(tmrbuf));
	tmrbuf->id = id;
	tmrbuf->msec = msec;
	tmrbuf->index = index;
	if(tmrdev[index].tail){
		tmrbuf->prev = tmrdev[index].tail;
		tmrdev[index].tail->next = tmrbuf;
	}else{
		timer_start(index);
		tmrdev[index].head = tmrbuf;
	}
	tmrdev[index].tail = tmrbuf;
}

void tmr_stop(timerbuf *p_timerbuf)
{
	if(tmrdev[p_timerbuf->index].tail==p_timerbuf){
		tmrdev[p_timerbuf->index].tail = p_timerbuf->prev;
		p_timerbuf->prev->next = NULL;
	}else if (tmrdev[p_timerbuf->index].head==p_timerbuf){
		tmrdev[p_timerbuf->index].head = NULL;
		tmrdev[p_timerbuf->index].tail = NULL;
	}else{
		p_timerbuf->prev->next = p_timerbuf->next;
		p_timerbuf->next->prev = p_timerbuf->prev;
	}
	if(tmrdev[p_timerbuf->index].head==NULL){
		timer_cancel(p_timerbuf->index);
	}
	kz_kmfree(p_timerbuf);
}

/* スレッドからの要求を処理する */
static int tmrdrv_command(struct tmrdev *tmr, kz_thread_id_t id,
			   int index, int size, char *command)
{
  switch (command[0]) {
  case TMRDRV_CMD_USE: /* タイマ・ドライバの使用開始 */
    /*tmr->id = id;
    tmr->index = index;
    timer_init(tmr->index);
    tmr_intr_enable(tmr->index); /* タイマ割込み有効化 */
    break;

	case TMRDRV_CMD_START: /* コンソールへの文字列出力 */
		/*
			* send_string()では送信バッファを操作しており再入不可なので，
			* 排他のために割込み禁止にして呼び出す．
			*/
		INTR_DISABLE;
		tmr_start(tmr, id, command[1]); /* 文字列の送信 */
		INTR_ENABLE;
		break;

  case TMRDRV_CMD_CANCEL: /* コンソールへの文字列出力 */
    /*
     * send_string()では送信バッファを操作しており再入不可なので，
     * 排他のために割込み禁止にして呼び出す．
     */
    INTR_DISABLE;
		//tmr_stop();
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
  char *p;

  tmrdrv_init();
	kz_setintr(SOFTVEC_TYPE_TMRINTR, tmrdrv_intr); /* 割込みハンドラ設定 */

  while (1) {
    id = kz_recv(MSGBOX_ID_TMROUTPUT, &size, &p);
    index = p[0] - '0';
    tmrdrv_command(&tmrdev[index], id, index, size - 1, p + 1);
    kz_kmfree(p);
  }

  return 0;
}
