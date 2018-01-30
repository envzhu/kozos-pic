#include "defines.h"
#include "hardware.h"
#include "serial.h"
#include "lib.h"

static int init(void)
{
  /* 以下はリンカ・スクリプトで定義してあるシンボル */
  extern int _erodata, _data_start, _edata, _bss_start, _ebss;

  /*
   * データ領域とBSS領域を初期化する．この処理以降でないと，
   * グローバル変数が初期化されていないので注意．
   */
  memcpy(&_data_start, &_erodata, (long)&_edata - (long)&_data_start);
  memset(&_bss_start, 0, (long)&_ebss - (long)&_bss_start);

  system_init();

  /* シリアルの初期化 */
  serial_init(SERIAL_DEFAULT_DEVICE);

  return 0;
}

int global_data = 0x10;
int global_bss;
static int static_data = 0x20;
static int static_bss;

static void printval(void)
{
  puts("global_data = "); putxval(global_data, 0); puts("\n");
  puts("global_bss  = "); putxval(global_bss,  0); puts("\n");
  puts("static_data = "); putxval(static_data, 0); puts("\n");
  puts("static_bss  = "); putxval(static_bss,  0); puts("\n");
}

int main(void)
{
  init();
  puts("Hello World!\n");

  printval();
  puts("overwrite variables.\n");
  global_data = 0x20;
  global_bss  = 0x30;
  static_data = 0x40;
  static_bss  = 0x50;
  printval();

  while (1)
    ;

  return 0;
}
