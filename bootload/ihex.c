#include "defines.h"
#include "lib.h"
#include "ihex.h"

static uint8 *startaddr = NULL;
static uint16 addr_offset = 0 ;



void ihex_init()
{
  startaddr = NULL;
}

static unsigned char h2d(unsigned char c)
{
  if ((c >= '0') && (c <= '9'))
    return c - '0';
  if ((c >= 'a') && (c <= 'f'))
    return c - 'a' + 0xa;
  if ((c >= 'A') && (c <= 'F'))
    return c - 'A' + 0xa;
  return -1;
}

static unsigned char getval(unsigned char **pp, unsigned char *sum)
{
  unsigned char val;
  unsigned char *p;

  p = *pp;
  val  = h2d(*(p++)) << 4;
  val |= h2d(*(p++));
  *pp = p;

  if(sum)
    *sum += val;

  return val;
}

static int decode_record(char *from)
{
  uint16 i, j, record_len, record_type, record_addr, checksum, dummy, sum=0;
  unsigned char record_data[128];
  unsigned char *p;

  p = from;
  if (*(p++) != ':'){
    return 0;
  }
  record_len = getval(&p, &sum);
  record_addr = getval(&p,&sum)<<8;
  record_addr |=getval(&p,&sum);
  record_type = getval(&p,&sum);
  for(i = 0;i<record_len;i++){
    record_data[i] = getval(&p,&sum);
  }
  checksum = getval(&p, NULL);
  
  switch (record_type) {
    case 0:
      for(i = 0;i<record_len;i++){
	      *((uint8 *)((addr_offset<<16)+record_addr+i)) = record_data[i];
      }
      break;
    case 1:
      return 1;
    case 4:
	    addr_offset = record_data[0]<<8;
	    addr_offset |= record_data[1];
      break;
    case 5:
      for(i=0;i<record_len;i++){
	      startaddr += record_data[i]<<8*(3-i);
      }
	    break;
    default:
      return -1;
  }
  return 0;
}

static inline int decode_data(unsigned char c)
{
  static char ihex_buf[270];
  static int i = 0;

  ihex_buf[i++] = c;
  if ((c == '\r') || (c == '\n')) {
    ihex_buf[--i] = '\0';
    i = 0;
    if (decode_record(ihex_buf) != 0)
      return 1;
  }

  return 0;
}

int ihex_decode(char *data_buf, int size)
{
  int i;
  for(i = 0; i < size; i++){
    decode_data(data_buf[i]);
  }
}

uint32 *ihex_startaddr()
{
  return startaddr;
}

