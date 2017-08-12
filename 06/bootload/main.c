#include "defines.h"
#include "serial.h"
#include "xmodem.h"
#include "lib.h"
#include "hardware.h"
//#include "elf.h"

#include "mx2/config.h"

DECLARE_CONFIG(0, 0x7FFFFFFB);
DECLARE_CONFIG(1, 0xFF7FCD59);
DECLARE_CONFIG(2, 0xFFF9F9F9);
DECLARE_CONFIG(3, 0xFFFFFFFF);

static int init(void)
{
  SYSTEM_Initialize();

  /* �V���A���̏����� */
  serial_init(SERIAL_DEFAULT_DEVICE);

  return 0;
}

/* ��������16�i�_���v�o�� */
static int dump(char *buf, long size)
{
  long i;

  if (size < 0) {
    puts("no data.\n");
    return -1;
  }
  for (i = 0; i < size; i++) {
    putxval(buf[i], 2);
    if ((i & 0xf) == 15) {
      puts("\n");
    } else {
      if ((i & 0xf) == 7) puts(" ");
      puts(" ");
    }
  }
  puts("\n");

  return 0;
}

static void wait()
{
  volatile long i;
  for (i = 0; i < 300000; i++)
    ;
}

int main(void)
{
  static char buf[16];
  static long size = -1;
  static unsigned char *loadbuf = NULL;
  char *entry_point;
  void (*f)(void);
  char buffer[30720]; /* �����J�E�X�N���v�g�Œ��`�����Ă����o�b�t�@ */

  init();

  puts("kzload (kozos boot loader) started.\n");

  while (1) {
    puts("kzload> "); /* �v�����v�g�\�� */
    gets(buf); /* �V���A�������̃R�}���h���M */

    if (!strcmp(buf, "load"))
    { /* XMODEM�ł̃t�@�C���̃_�E�����[�h */
      loadbuf = buffer;
      size = xmodem_recv(loadbuf);
      wait(); /* �]���A�v�����I�����[���A�v���ɐ��䂪�߂��܂ő҂����킹�� */
      if (size < 0) {puts("\nXMODEM receive error!\n");
      } else {
	puts("\nXMODEM receive succeeded.\n");
      }
    } else if (!strcmp(buf, "dump")) { /* ��������16�i�_���v�o�� */
      puts("size: ");
      putxval(size, 0);
      puts("\n");
      dump(loadbuf, size);
    } else if (!strcmp(buf, "run")) { /* ELF�`���t�@�C���̎��s */
      entry_point = elf_load(loadbuf); /* ���������ɓW�J(���[�h) */
      if (!entry_point) {
	puts("run error!\n");
      } else {
	puts("starting from entry point: ");
	putxval((unsigned long)entry_point, 0);
	puts("\n");
    init_BMX();
	f = (void (*)(void))entry_point;
	f(); /* �����ŁC���[�h�����v���O�����ɏ������n�� */
	/* �����ɂ͕Ԃ��Ă��Ȃ� */
      }
    } else {
      puts("unknown.\n");
    }
  }

  return 0;
}
