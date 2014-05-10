.include "hdr.asm"

.base $70
.ramsection "my_sram_data" bank 0 slot 4
sram_long_schlong dsb 100
.ends

.base $00

