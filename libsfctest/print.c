
#include "sfc.h"
#include <stdio.h>
#include <stdint.h>

#include "print.h"

//x 0-31
//y 0-27
//print a string to vram by building a map, uses default font location.
void print(const uint8_t* string, uint16_t x, uint16_t y){
	static uint16_t* print_buffer;
	size_t string_length = strlen(string);
	print_buffer = malloc(string_length<<1);
	
	uint16_t i = 0;
	while(i < string_length){//string[i] != 0){
		// put character in our ascii range (-32), cast to 16 bit and append upper map byte
		print_buffer[i] = (uint16_t)(string[i] - 32) | BIT(13);
		++i;
	}
	#define VRAM_FONT_MAP 0x7C00
	REG_VMADD = VRAM_FONT_MAP | ((x) + (y << 5)); // might add vertical wrapping for doofuses (doofi?)
	dmaTransfer(0x1801, print_buffer, string_length<<1);
	free(print_buffer);
	//print_buffer = NULL;
}
