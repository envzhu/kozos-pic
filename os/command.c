#include "defines.h"
#include "kozos.h"
#include "consdrv.h"
#include "tmrdrv.h"
#include "lib.h"

/* コンソール・ドライバの使用開始をコンソール・ドライバに依頼する */
static void send_use(int index)
{
  char *p;
  p = kz_kmalloc(3);
  p[0] = '0';
  p[1] = CONSDRV_CMD_USE;
  p[2] = '0' + index;
  kz_send(MSGBOX_ID_CONSOUTPUT, 3, p);
}

/* コンソールへの文字列出力をコンソール・ドライバに依頼する */
static void send_write(char *str)
{
  char *p;
  int len;
  len = strlen(str);
  p = kz_kmalloc(len + 2);
  p[0] = '0';
  p[1] = CONSDRV_CMD_WRITE;
  memcpy(&p[2], str, len);
  kz_send(MSGBOX_ID_CONSOUTPUT, len + 2, p);
}

static void tmr_sleep(int msec){
  char *p;
  p = kz_kmalloc(6);
  p[0] = '0' + TMR_DEFAULT_DEVICE;
  p[1] = TMRDRV_CMD_START;
  p[2] = msec>>24;
  p[3] = (msec>>16)&0xFF;
  p[4] = (msec>>8)&0xFF;
  p[5] = msec&0xFF;

  kz_send(MSGBOX_ID_TMROUTPUT, 6, p);
  kz_recv(MSGBOX_ID_TMRINPUT, NULL, NULL);
}

int command_main(int argc, char *argv[])
{
  char *p;
  int size;

  send_use(SERIAL_DEFAULT_DEVICE);

  while (1) {
    send_write("command> "); /* プロンプト表示 */

    /* コンソールからの受信文字列を受け取る */
    kz_recv(MSGBOX_ID_CONSINPUT, &size, &p);
    p[size] = '\0';

    if (!strncmp(p, "echo", 4)) { /* echoコマンド */
      send_write(p + 4); /* echoに続く文字列を出力する */
      send_write("\n");
    } else if (!strncmp(p, "wait", 4)) { /* waitコマンド */
      tmr_sleep(1000);
    } else {
      send_write("unknown.\n");
    }

    kz_kmfree(p);
  }

  return 0;
}
