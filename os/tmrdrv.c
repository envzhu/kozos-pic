#include "defines.h"
#include "kozos.h"
#include "intr.h"
#include "interrupt.h"
#include "timer.h"
#include "lib.h"
#include "tmrdrv.h"

typedef struct _tmrbuf {
	struct _tmrbuf *prev;
	struct _tmrbuf *next;
	int index;
	int msec;
}tmrbuf;


tmrbuf *head;
tmrbuf *tail;

void tmr_stop(tmrbuf *p_timerbuf);

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
	tmrbuf *p_timerbuf;
	p_timerbuf = head;
	timer_expire(p_timerbuf->index);
	do{
		p_timerbuf->msec--;
		if(p_timerbuf->msec==0){
			tmr_stop(p_timerbuf);
			kx_send(MSGBOX_ID_TMRINPUT, 0, NULL);
		}
	}while((p_timerbuf->next == NULL) && (p_timerbuf = p_timerbuf->next));
}

static int tmrdrv_init(void)
{
  //memset(tmrdev, 0, sizeof(tmrdev));
	head=NULL;
	tail=NULL;
  return 0;
}

static void tmr_start(int index, int msec)
{
	putxval(msec, 0);
	tmrbuf *p_tmrbuf = kz_kmalloc(sizeof(tmrbuf));
	p_tmrbuf->index = index;
	p_tmrbuf->msec = 1000;
	if(tail){
		tail->next = p_tmrbuf;
		p_tmrbuf->next = tail;
	}else{
		head = p_tmrbuf;
	}
	tail = p_tmrbuf;
	timer_start(index);
}

void tmr_stop(tmrbuf *p_timerbuf)
{
	if(head == p_timerbuf){
		if(p_timerbuf->next == NULL){
			timer_stop(p_timerbuf->index);
			head = NULL;
			tail = NULL;
		}else{
			head = p_timerbuf->next;
			head->prev = NULL;
		}
	}else if(tail==p_timerbuf){
		tail = p_timerbuf->prev;
		tail->next=NULL;
	}else{
		p_timerbuf->prev->next = p_timerbuf->next;
		p_timerbuf->next->prev = p_timerbuf->prev;
	}
	kx_kmfree(p_timerbuf);
}

/* スレッドからの要求を処理する */
static int tmrdrv_command(int index, int size, char *command)
{
  switch (command[0]) {
	case TMRDRV_CMD_START:
		INTR_DISABLE;
		tmr_start(index, (command[1]<<24)|(command[2]<<16)|(command[3]<<8)|command[4]); /* 文字列の送信 */
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
    tmrdrv_command(index, size - 1, p + 1);
    kz_kmfree(p);
  }

  return 0;
}
