#ifndef _MATH_H
#define _MATH_H

unsigned int umult8(unsigned char a, unsigned char b);
signed int smult8(signed char a, signed char b);
unsigned int udiv16by8(unsigned int num, unsigned char denom);
signed int sdiv16by8(signed int num, signed char denom);


float modf(float x, float *fp);
float ldexp(float x, int exp);
float floor(float d);
float ceil(float d);
float exp(float arg);
float frexp(float x, int *exp);
float log(float arg);
float log10(float arg);
float pow(float arg1, float arg2);
float fabs(float);

#endif
