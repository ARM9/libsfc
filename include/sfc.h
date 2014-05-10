/*
*			libsfc
*	A C library for the SNES
*
*/
#ifndef _LIBSFC_HEADER
#define _LIBSFC_HEADER

#include "sfc_regs.h"

#define BIT(n) (1<<n)

//joypad stuff
#define PAD_A		0x0080
#define PAD_X		0x0040
#define PAD_L		0x0020
#define PAD_R		0x0010
#define PAD_B		0x8000
#define PAD_Y		0x4000
#define PAD_SELECT	0x2000
#define PAD_START	0x1000
#define PAD_UP		0x0800
#define PAD_DOWN	0x0400
#define PAD_LEFT	0x0200
#define PAD_RIGHT	0x0100

//bg stuff
#define enableBG(x) (REG_TM = (x))

//interrupt stuff
#define EnableNMI		(0x80)
#define EnableVIRQ		(1<<5)
#define EnableHIRQ		(1<<4)
#define EnableAutoJoy	(0x1)
#define enableInterrupts(x) REG_NMITIMEN = (x)

//only way to inline "functions" with tcc-816 is macros...

/*move to interrupts.h*/
extern void waitForInterrupt(); // efficient, continues on all interrupts
extern void (*__nmi_handler)(void);
extern void (*__irq_handler)(void);


extern void setNMIHandler(void (*f)(void));/*{
	__nmi_handler = f;
}*/

extern void setIRQHandler(void (*f)(void));/*{
	__irq_handler = f;
}
/**/

// DMA stuff

//DMA transfer macros for inlineage, not very space efficient so use dma functions where possible
#define DMA_TYPE(chn,x)         (*(volatile unsigned short*)(0x4300|((chn)<<4)))=(x)
#define DMA_ADDR(chn,x)         (*(void**)(0x4302|((chn)<<4)))=(x)
#define DMA_SIZE(chn,x)         (*(volatile size_t*)(0x4305|((chn)<<4)))=(x)

//chn: constant, channel number 0-7 (preferably use only one channel for all dma transfers)
#define dmaTransfer(type, addr, size) DMA_TYPE((0), (type)); \
		DMA_ADDR((0), (addr)); \
		DMA_SIZE((0), (size)); \
		REG_MDMAEN = BIT(0)


//structs
typedef union ptr24_t{
	struct {
		unsigned short addr;
		unsigned char bank;
		unsigned char __pad; /*alignment because C*/
	} c;
	void *p;
}ptr24_t;
/*
ptr24_t inid;
inid.c.addr = 0x2100;
inid.c.bank = 0xBF;
*inid.p = 0x80; */

#endif
