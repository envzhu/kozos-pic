#include "defines.h"
#include "kozos.h"
#include "interrupt.h"
#include "lib.h"

/* �����ƥࡦ�������ȥ桼���������åɤε�ư */
static int start_threads(int argc, char *argv[])
{
  puts("start_threads\n");
  kz_run(test08_1_main, "command", 0x200, 0, NULL);
  return 0;
}

int main(void)
{
  //INTR_DISABLE; /* ������̵���ˤ��� */

  puts("kozos boot succeed!\n");

  /* OS��ư��� */
  kz_start(start_threads, "start", 0x100, 0, NULL);
  /* �����ˤ����äƤ��ʤ� */

  return 0;
}
