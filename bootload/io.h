#ifndef _IO_H_INCLUDED_
#define _IO_H_INCLUDED_

#define ANSELA  	*((volatile unsigned int *)0xBF886000)
#define TRISA   	*((volatile unsigned int *)0xBF886010)
#define LATA    	*((volatile unsigned int *)0xBF886030)
#define LATACLR  	*((volatile unsigned int *)0xBF886034)
#define LATASET  	*((volatile unsigned int *)0xBF886038)
#define LATAINV  	*((volatile unsigned int *)0xBF88603C)

#define ANSELB  	*((volatile unsigned int *)0xBF886100)
#define TRISB   	*((volatile unsigned int *)0xBF886110)
#define LATB    	*((volatile unsigned int *)0xBF886130)
#define LATBCLR  	*((volatile unsigned int *)0xBF886134)
#define LATBSET  	*((volatile unsigned int *)0xBF886138)
#define LATBINV  	*((volatile unsigned int *)0xBF88613C)


//PORTA
#define PIC_TRISA_RA0_SET_INPUT (1<<0)
#define PIC_TRISA_RA1_SET_INPUT (1<<1)
#define PIC_TRISA_RA2_SET_INPUT (1<<2)
#define PIC_TRISA_RA3_SET_INPUT (1<<3)
#define PIC_TRISA_RA4_SET_INPUT (1<<4)
#define PIC_TRISA_RA5_SET_INPUT (1<<5)
#define PIC_TRISA_RA6_SET_INPUT (1<<6)
#define PIC_TRISA_RA7_SET_INPUT (1<<7)
#define PIC_TRISA_RA8_SET_INPUT (1<<8)
#define PIC_TRISA_RA9_SET_INPUT (1<<9)
#define PIC_TRISA_RA10_SET_INPUT (1<<10)
#define PIC_TRISA_RA11_SET_INPUT (1<<11)
#define PIC_TRISA_RA12_SET_INPUT (1<<12)
#define PIC_TRISA_RA13_SET_INPUT (1<<13)
#define PIC_TRISA_RA14_SET_INPUT (1<<14)
#define PIC_TRISA_RA15_SET_INPUT (1<<15)

//PORTB
#define PIC_TRISB_RB0_SET_INPUT (1<<0)
#define PIC_TRISB_RB1_SET_INPUT (1<<1)
#define PIC_TRISB_RB2_SET_INPUT (1<<2)
#define PIC_TRISB_RB3_SET_INPUT (1<<3)
#define PIC_TRISB_RB4_SET_INPUT (1<<4)
#define PIC_TRISB_RB5_SET_INPUT (1<<5)
#define PIC_TRISB_RB6_SET_INPUT (1<<6)
#define PIC_TRISB_RB7_SET_INPUT (1<<7)
#define PIC_TRISB_RB8_SET_INPUT (1<<8)
#define PIC_TRISB_RB9_SET_INPUT (1<<9)
#define PIC_TRISB_RB10_SET_INPUT (1<<10)
#define PIC_TRISB_RB11_SET_INPUT (1<<11)
#define PIC_TRISB_RB12_SET_INPUT (1<<12)
#define PIC_TRISB_RB13_SET_INPUT (1<<13)
#define PIC_TRISB_RB14_SET_INPUT (1<<14)
#define PIC_TRISB_RB15_SET_INPUT (1<<15)

#endif
