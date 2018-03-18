#ifndef _XMODEM_H_INCLUDED_
#define _XMODEM_H_INCLUDED_

long xmodem_recv(char *buf);
long xmodem_streaming(void (*program_decode)(char *data_buf, int size));

#endif
