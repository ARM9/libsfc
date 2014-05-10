#ifndef MARIO_SPRITE
#define MARIO_SPRITE

#define MARIO_SPRITE_FRAMES 23
struct Mario_Sprite {
	uint8_t frame;		// current frame
	uint8_t tile[MARIO_SPRITE_FRAMES];	// indices into sprite sheet
	uint8_t anim_length;
	uint8_t anim_speed;	// toggle rate at which to animate sprite, higher = slower
	uint8_t size;		// todo
} Mario_Sprite;

static struct Mario_Sprite Mario = {
	0,
	{0,1,2,3,16,17,18,19,32,33,34,35,34,33,32,19,18,17,16,3,2,1},
	MARIO_SPRITE_FRAMES-1,
	1,
	0
};

#endif
