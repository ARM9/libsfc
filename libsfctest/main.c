/*
* Testbed for anything I implement in libsfc
*/
#include "sfc.h"
#include "cgram.h"
#include "dma.h"
#include "DSP-1.h"
#include "interrupts.h"
#include "joypad.h"
#include "video.h"
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

#include "print.h"
#include "vector.h"
#include "sprites/maleo.h"	// tcc is completely busto, can't use main.h

//some assets
extern const uint8_t koop_tiles, koop_tiles_end, koop_map, koop_map_end, koop_pal;
extern const uint8_t donut2_tiles, donut2_tiles_end, donut2_pal;
extern const uint8_t mario_tiles, mario_tiles_end, mario_pal;
extern const uint8_t torus_sans, torus_sans_end;

//#define irqHandler ((void (*)(void))&__rodata_irq)

struct Dude{
	uint16_t velocity;
	int16_t torque;
	uint16_t speed;
	uint16_t terminalVelocity;
}Dude;

const uint8_t __rodata_nmi[] = {
0x8B, 0x48, 0x08, 0xE2, 0x20, 0x4B, 0xAB, 0xAD, 0x10, 0x42,/* 0xA9, 0x0F, 0x8F, 0x00, 0x21, 0x00,*/ 0x28, 0x68, 0xAB, 0x6B
}; // inline asm in tcc *sigh*


/**
*	runtime 2bpp tileset conversion to 4bpp
*	dest: vram address
*	source: pointer to data to convert and transfer to vram
*	n_tiles: number of tiles
*/
void convert2bppTo4bppToVRAM(uint16_t dest, void *source, size_t n_tiles){ 
	uint16_t j = 0, i = 0;
	for(i; i < n_tiles; ++i){
		j+=16;
		REG_VMADD = (dest+j);
		dmaTransfer(0x1801, &torus_sans+(j), 16);
	}
}


#define map_pal(x) (x<<10)
const uint8_t* atext2 = "test this!";
const uint8_t atext3[] = {'D','S','P','-','1',0};


extern uint8_t sram_long_schlong[100];
extern int16_t _cam_x, _cam_y, _cam_z, _cam_Lfe, _cam_Les, _cam_Aas, _cam_Azs, _cam_cx, _cam_cy;

static uint8_t brightness = 0;
static uint16_t frame_count = 0;

static uint8_t oamBuffer[0x220]; // oam buffer
static uint16_t palBuffer[0x100]; // cgram buffer

static uint16_t temp_sin, temp_cos; // Use to store sin/cos for repeat use during a frame

static DSP_perspective camera = {
	256, 512, 64,
	0x80, 0x40, 0, 0x3F00,
	0, 0,
	0, 0};
static DSP_perspective* cam_ptr = &camera;


void myNmi(void){
	static uint16_t current_frame = 0;
	if(current_frame == frame_count)
		return; // Return if everything hasn't finnished this frame, avoid this like the plague
	
	REG_VMAIN = 0x80;
	uint16_t i, j = 0;
	if(current_frame&Mario.anim_speed){
		if(++Mario.frame>Mario.anim_length)
			Mario.frame = 0;
		
		for(i = 0; i < 4; ++i){
			REG_VMADD = (0x4000+(j));
			// Transfer 
			dmaTransfer(0x1801, (&mario_tiles + (j << 1) + ((Mario.tile[Mario.frame]) << 7)), 0x80); //(&mario_tiles_end - &mario_tiles));
			j+=256;
		}
	}
	//((void (*)(void))&__rodata_nmi)();
	
	//dspSinCos(current_frame<<8, 0x10, &temp_sin, &temp_cos);
	
	dspUpdateCamera(cam_ptr);
	
	// Transfer OAM buffer to OAM
	DMA_TYPE(0, 0x0400);
	DMA_ADDR(0, &oamBuffer);
	DMA_SIZE(0, sizeof(oamBuffer));
	REG_MDMAEN = 0x1;
	
	REG_HDMAEN = 0x1E; //todo: finnish hdma state implementaton
	
	REG_INIDISP = brightness;
	if(brightness<15)
		++brightness;
	current_frame = frame_count;
}

int main(void){
	REG_INIDISP = 0x80; // force blank
	
	setNMIHandler(&myNmi);
	enableInterrupts(EnableNMI | EnableAutoJoy);
	
	REG_M7SEL = 0xC0;
	
	makeMode7Game();
	
	sram_long_schlong[1] = 0x80; //sram working
	REG_VMAIN = sram_long_schlong[1];
	REG_VMADD = 0x0000;
	dmaTransfer(0x1801, &donut2_tiles, 0x8000);
	
	REG_VMAIN = 0x80;
	uint16_t i, j = 0;
	for(i = 0; i < 4; ++i){
		REG_VMADD = (0x4000+(j));
		dmaTransfer(0x1801, &mario_tiles+(j<<1), 0x80); //(&mario_tiles_end - &mario_tiles));
		j+=256;
	}
	
	REG_VMAIN = 0x80;
	REG_VMADD = 0x6000;
	dmaTransfer(0x1801, &torus_sans, &torus_sans_end-&torus_sans);
	
	convert2bppTo4bppToVRAM(0x7000, &torus_sans, 95);
	
	//REG_VMADD = 0x7820;
	//dmaTransfer(0x1801, &atext2, sizeof(atext2));
	//REG_VMADD = 0x7C40;
	//dmaTransfer(0x1801, &atext3, sizeof(atext3));
	print("TEST", 0, 0);
	print("TEST G-unit gyqjp QQ g", 5, 0);
	print("TEST", 28, 3);
	print(" <_> xyz^*'-.,_(<;:>)~?`|+\\=][{}&%#$@", 28, 0);
	print(atext2, 12, 3);
	print(atext3, 3, 3);
	
	
	REG_BG2SC = 0x78;
	REG_BG3SC = 0x7C;
	REG_BG12NBA = 0x70;
	REG_BG34NBA = 0x06;
	
	REG_BG3HOFS = 0;
	REG_BG3HOFS = 0;
	REG_BG3VOFS = -2;
	REG_BG3VOFS = 0;
	//REG_BG2VOFS = 0x04;
	//REG_BG2VOFS = 0x00;
	
	memcpy(&palBuffer, &donut2_pal, 256);
	memcpy(&palBuffer[128], &mario_pal, 32);
	//dmaToCGRAM(0, &donut2_pal, 256);
	dmaToCGRAM(0, &palBuffer, 512);
	//REG_CGADD = 128;
	//dmaTransfer(0, 0x2200, &mario_pal, 32);
	//dmaToCGRAM(128, &mario_pal, 32);
	
	enableBG(0x11);
	
	REG_OBJSEL = 0xA2;		// Sprite settings
	REG_OAMADD = 0x8000;	// 
	
	memset(&oamBuffer[0], 0xE0, 512); // Initialize oam buffer to offscreen coords
	
	static uint16_t j;
	j = 2;
	while(j < 512){
		*(uint16_t*)&oamBuffer[j] = 0x3000;
		j+=4;
	}
	
	//while(REG_HVBJOY != 0x80){} // shitty way to wait for vblank
	srand(0x1337);
	static uint8_t numpads = 1;
	
	initJoypads(numpads);
	
	_cam_Azs = 0x3800;
	_cam_Lfe = 0x10;
	_cam_Les = 0x10;//0x80 is good value for flying, 0x0-0x20 is good for driving perspective
	_cam_x = 0x9a0;
	_cam_y = 0x1a00;
	_cam_z = 0x1A;
	
	static uint16_t temp = 0; 
	
	static int8_t foo = 2;
	static uint16_t bar = 2;
	
	temp = udiv16by8(0xf0f, umult8(bar, 1));//(*(vu16*)0x4214);
	temp = foo * foo;
	
	REG_CGADD = 128;
	REG_CGDATA = (uint8_t)temp;
	REG_CGDATA = (uint8_t)(temp>>8);
	
	while(1){
		static uint16_t pad1 = 0;
		static struct Dude player = {0x0000, 0x0000, 0x0004, 0x0050};
		static struct vector3 sprite1 = {0x0200, 0x0400, 0xff00};
		static struct vector3 sprite2 = {0x0000, 0x0000, 0x0000};
		static DSP_vec3 rotpoint = {0x0000, 0x4000, 0x0000};
		
		rotpoint.y = _cam_Aas;
				
		dspSetAttitudeA(0x7FFF, &rotpoint);
		static struct DSP_vec3 zerovect = {0, 0, 0};
		
		dspObj2GlobalA((DSP_vec3*)&sprite1.x, (DSP_vec3*)&sprite2.x);
		
		dspUpdateProjection(&camera);
		if(frame_count&1){
			dspObjectProjection(sprite2.x, sprite2.y, sprite2.z, &oamBuffer[0], &oamBuffer[1], &temp);
			dspObjectProjection(sprite2.x+320, sprite2.y+320, sprite2.z+500, &oamBuffer[4], &oamBuffer[5], &temp);
		}else{
		
		}
		dspRenderProjection(&camera);
		
		temp = 0;
		//while(++temp<500){ //adds around 20500 cycles per frame
		//}
		static uint8_t *maltest;
		maltest = malloc(2244);
		free(maltest);
		
		pad1 = joypadHeld(0);
		
		temp = (player.terminalVelocity+(_cam_z>>3));
		if(pad1 & PAD_UP){
			player.velocity < temp ? ++player.velocity : player.velocity = temp;
		}else{
			if(player.velocity > 0){
				--player.velocity;
			}
		}
		
		if(pad1 & PAD_RIGHT){
			if(player.torque < 0x50){
				player.torque += 4;
			}
		}else if(pad1 & PAD_LEFT){
			if(player.torque > -0x50){//-0x50){
				player.torque -= 4;
			}
		}
		
		
		if(player.torque<0){
			++player.torque;
			++player.torque;
		}else if(player.torque>0){
			--player.torque;
			--player.torque;
		}
		
		if(pad1 & PAD_L){
			_cam_Lfe < 0x1f ? : _cam_Lfe -= 0x10;
		}else if(pad1 & PAD_R){
			_cam_Lfe > 0x800 ? : _cam_Lfe += 0x10;
		}
		
		if(pad1 & PAD_Y){
			_cam_z > 0x100 ? : _cam_z += 2;
		}else if(pad1 & PAD_B){
			_cam_z < 0x18 ? : _cam_z -= 2;
		}
		
		if(pad1 & PAD_X){
			_cam_Les < 0x11 ? : --_cam_Les;
			_cam_Azs > 0x4000 ? : _cam_Azs += 0x40;
		}else if(pad1 & PAD_A){
			_cam_Les > 0x80 ? : ++_cam_Les;
			_cam_Azs < -0x1000 ? : _cam_Azs -= 0x40;
		}
		
		_cam_Aas += player.torque<<2;
		
		dspSinCos(_cam_Aas, player.velocity<<8, &temp_sin, &temp_cos);
		if(player.velocity!=0){
			_cam_x += dspMult16(player.velocity, temp_sin);
			_cam_y -= dspMult16(player.velocity, temp_cos);
		}
		
		_cam_cx>>=4;
		_cam_cy>>=4;
		
		++frame_count;
		waitForInterrupt();
	}
	return 0;
}

