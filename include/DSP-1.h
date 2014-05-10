#ifndef _DSP1_H
#define _DSP1_H
/*
*	DSP-1 clock 7.6MHz
*	CPU clock 2.68MHz (3.58Mhz fast)
*	Clock differential
*		DSP-1 2.8358208955223880597014925373134 times faster than 2.68
*		DSP-1 2.122905027932960893854748603352 times faster than 3.58
*		0.35263157894736842105263157894737
*		0.47105263157894736842105263157895
*/
/*	DSP-1 mapping
* ROM map	Bank		Data register(DR)	Status register(SR)
* LoROM		$30-$3F		$8000-$BFFF			$C000-$FFFF
* HiROM		$80-$8F		$6000-$6FFF			$7000-$7FFF
*/
#include "sfc_regs.h"

#define DSP_BANK 0x3F
#define DSP_DR 0x8000 //Data register
#define DSP_SR 0xC000 //Status register

typedef struct DSP_float{
	unsigned int coeff;
	unsigned int exponent;
}DSP_float;

typedef struct DSP_vec2{
	int x, y;
}DSP_vec2;

typedef struct DSP_vec3{
	int x, y, z;
}DSP_vec3;
//DSP_Vec3
//DSP_vec3
//dsp_vec3
//DspVec3
//dspVec3
//DSPVEC3

// use one
typedef struct DSP_perspective{
	//unsigned int x, y, z; // [CI] x horizontal, y depth, z vertical
	DSP_vec3 xyz;
	unsigned int Lfe; // [U] Lfe, Distance between base point and viewpoint (Sets screen-sprite ratio), distance between focal point and camera.
	//Note that Lfe and the zenith angle interact heavily and can cause weird effects. You may have to increase the z coordinate to avoid the background being inverted.
	unsigned int zoom; // [U] Les, distance between viewpoint and screen (the effect of screen angle considered; screen horizontal distance 256)
	//zoom effect, relative to other parameters. Interacts heavily with zenith at least, also Lfe probably.
	//don't set to zero if you intend to change zenith during play, some angles may look bad (jagged). 16 to 256 is generally good for racing games. Use 0x400 or more for flying where you want first person view, need to adjust z, zenith and Lfe heavily as well for this to look good though.
	//logarithmic style curve
	unsigned int azimuth; // [A] Aas, yaw, rotation around z (vertical) axis
	//Facing north ($0000), east ($4000), south ($8000), west ($C000).)
	unsigned int zenith; // [A] Azs, Zenith angle, sort of rotation around x/y axes, relative to the other parameters
	//
	//set to 0 for looking straight down, increase to rotate the perspective upwards.
	//around 0x5800 it starts looking cruddy
	//from pilotwings ram map: Facing flat ground ($0000), facing horizon ($4000), facing sky ($8000).)
	unsigned int center_x, center_y; // [CI] for BG1VOFS, BG1HOFS, M7X and M7Y, want to offset this for M7X and M7Y with a constant height and width relative to screen size (width generally being relative to screen width so -128)
	unsigned int raster_center; //[I] subtract from center_y and add the constant screen height offset before writing to BG1VOFS
	unsigned int horizon; //[I] Not sure what this is used for.  May be related to some ranges of zenith angles (0x6000-0x7FFF for example) looking like crud, perhaps need to offset something (center_y or x?) by this. (Might also be intended for use if you change the height of the rendered perspective?)
	//apparently pilotwings adds raster center to the  Y offset constant, stores to a variable at $8A, then also adds raster horizon and stores that to $18F2 (what is this used for?). 
}DSP_perspective;

struct DSP_camera{
	unsigned int center_x, center_y;
	unsigned int raster_center;
	unsigned int horizon;
}DSP_camera;

extern void dspWaitRQM(); //If you want to use the DSP-1 directly from C, wouldn't recommend it.
//Even with the call overhead it's faster than checking the status bit with C.
//Would be great if you could inline functions easier.

extern int dspMult16(int A, int B); //$00
extern int dspMult8(char A, char B); //$00
extern void dspSinCos(int angle, unsigned int radius, int *sin, int *cos); //$04
extern void dspRotate2D(int angle, int *x, int *y); //$0C
//extern void dspRotate3D(DSP_vec3 *rot, DSP_vec3 *pos, DSP_vec3 *dpos); //$1C
extern void dspInverse(DSP_float *input); //$10

//matrix stuff
extern void dspSetAttitudeA(int scalar, DSP_vec3 *rot); //$01
extern void dspSetAttitudeB(int scalar, DSP_vec3 *rot); //$11
extern void dspSetAttitudeC(int scalar, DSP_vec3 *rot); //$21

extern void dspObj2GlobalA(DSP_vec3 *obj_flu, DSP_vec3 *out_xyz); //$03
extern void dspObj2GlobalB(DSP_vec3 *obj_flu, DSP_vec3 *out_xyz); //$13
extern void dspObj2GlobalC(DSP_vec3 *obj_flu, DSP_vec3 *out_xyz); //$23

extern int dspInnerProductA(DSP_vec3 *vector); //$0B
extern int dspInnerProductB(DSP_vec3 *vector); //$1B
extern int dspInnerProductC(DSP_vec3 *vector); //$2B

extern void dspGlobal2ObjA(DSP_vec3 *global_xyz, DSP_vec3 *out_flu); //$0D
extern void dspGlobal2ObjB(DSP_vec3 *global_xyz, DSP_vec3 *out_flu); //$1D
extern void dspGlobal2ObjC(DSP_vec3 *global_xyz, DSP_vec3 *out_flu); //$2D

//vector stuff
extern int32_t dspVec3Radius(DSP_vec3 *xyz); //$08
extern int dspVec3Range(DSP_vec3 *xyz, int range); //$18
extern int dspVec3Magnitude(DSP_vec3 *xyz); //$28

//perspective projection stuff
extern void dspUpdateProjection(DSP_perspective *prespective);
extern void dspRenderProjection(DSP_perspective *perspective);
extern void dspUpdateCamera(DSP_perspective *perspective);
extern void dspObjectProjection(unsigned int x, unsigned int y, unsigned int z, void *H, void *V, unsigned int *M); //$06
extern void dspTarget(DSP_vec2 *screen_xy, DSP_vec2 *out_xy); //$0E
#endif
