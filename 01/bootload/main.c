#include "defines.h"
#include "hardware.h"
#include "serial.h"
#include "lib.h"

int main(void)
{
  system_init();
  serial_init(SERIAL_DEFAULT_DEVICE);

  puts("Hello World!\n");

  while (1)
    ;

  return 0;
}
