#ifndef _STDINT_H
#define _STDINT_H

typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef signed int int16_t;
typedef unsigned int uint16_t;
typedef signed long long int32_t;
typedef unsigned long long uint32_t;

/* deal with it */
typedef signed char s8;
typedef signed int s16;
typedef signed long long s32;
typedef unsigned char u8;
typedef unsigned int u16;
typedef unsigned long long u32;

/* volatile typedefs */
typedef volatile signed char vs8;
typedef volatile signed int vs16;
typedef volatile signed long long vs32;
typedef volatile unsigned char vu8;
typedef volatile unsigned int vu16;
typedef volatile unsigned long long vu32;

/*
sizeofs:
char = 1 byte
short = 2 bytes
int = 2 bytes
long = 2 bytes
long long = 4 bytes
float = 4 bytes
*/

#endif
