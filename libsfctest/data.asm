
.include "hdr.asm"

.base $80
.section ".rodata1" superfree

koop_tiles:
	.incbin "gfx/koop.pc7"
koop_tiles_end:
koop_map:
	.incbin "gfx/koop.mp7"
koop_map_end:
koop_pal:
	.incbin "gfx/koop.pal" 
koop_pal_end:

mario_tiles:
	.incbin "gfx/mario.pic" SKIP $1800 READ $1800
mario_tiles_end:

mario_pal:
	.incbin "gfx/mario.pal" 
donut2_pal:
	.incbin "gfx/donut2.pal" 

torus_sans:
	.incbin "gfx/torus_sans.pic" FSIZE torus_sans_len
torus_sans_end:

.ends

.section ".rodata2" superfree
donut2_tiles:
	.incbin "gfx/donut2.bin"
donut2_tiles_end:
.ends

.base $00

