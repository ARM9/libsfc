#ifndef _STDLIB_H
#define _STDLIB_H

#include "stddef.h"

#define RAND_MAX 0xFFFF

void abort(void);
void exit(int status);

void *malloc(size_t size);
void free(void *ptr);
void *realloc(void *ptr, size_t size);

unsigned long strtoul(const char *cp,char **endp,unsigned int base);
long strtol(const char *cp,char **endp,unsigned int base);
unsigned long long strtoull(const char *cp,char **endp,unsigned int base);
long long strtoll(const char *cp,char **endp,unsigned int base);

int rand(void);
void srand(unsigned int seed);

#endif
