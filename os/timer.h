#ifndef _TIMER_H_INCLUDED_
#define _TIMER_H_INCLUDED_

int timer_start(int index); /* タイマ開始 */
int timer_is_expired(int index);      /* タイマ満了したか？ */
int timer_expire(int index);          /* タイマ満了処理 */
int timer_stop(int index);          /* タイマキャンセル */

#endif
