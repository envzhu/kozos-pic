#ifndef _ihex_H_INCLUDED_
#define _ihex_H_INCLUDED_

void ihex_init(void);
int ihex_decode(char *data_buf, int size);
uint32 *ihex_startaddr(void);

#endif
