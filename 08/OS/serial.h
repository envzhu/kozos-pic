#ifndef _SERIAL_H_INCLUDED_
#define _SERIAL_H_INCLUDED_

int serial_init(int index);                       /* �f�o�C�X������ */
int serial_is_send_enable(int index);             /* ���M�\���H */
int serial_send_byte(int index, unsigned char b); /* �P�������M */
int serial_is_recv_enable(int index);             /* ���M�\���H */
unsigned char serial_recv_byte(int index);        /* �P�������M */
int serial_intr_is_recv_enable(int index);        /* ����������ͭ������ */
void serial_intr_recv_enable(int index);          /* ����������ͭ���� */
void serial_intr_recv_disable(int index);         /* ����������̵���� */

#endif
