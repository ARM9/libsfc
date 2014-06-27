.include "hdr.asm"

.ramsection ".registers" bank 0 slot 1
tcc__registers dsb 0
tcc__r0 dsb 2
tcc__r0h dsb 2
tcc__r1 dsb 2
tcc__r1h dsb 2
tcc__r2 dsb 2
tcc__r2h dsb 2
tcc__r3 dsb 2
tcc__r3h dsb 2
tcc__r4 dsb 2
tcc__r4h dsb 2
tcc__r5 dsb 2
tcc__r5h dsb 2
tcc__r9 dsb 2
tcc__r9h dsb 2
tcc__r10 dsb 2
tcc__r10h dsb 2
; f0/f1 defined in libm.asm
tcc__f2 dsb 2
tcc__f2h dsb 2
tcc__f3 dsb 2
tcc__f3h dsb 2
move_insn dsb 4	; 3 bytes mvn + 1 byte rts
move_backwards_insn dsb 4 ; 3 bytes mvp + 1 byte rts
__nmi_handler dsb 4
__irq_handler dsb 4

_libsfc_r0 dsb 2
_libsfc_r1 dsb 2
_libsfc_r2 dsb 2
_libsfc_r3 dsb 2
_libsfc_r4 dsb 2
_libsfc_r5 dsb 2
_libsfc_r6 dsb 2
_libsfc_r7 dsb 2

;tcc__registers_irq dsb 0 ; This should really be aligned on a 0 page boundary or direct page speed will suffer
;tcc__regs_irq dsb 48
.ends

.define tcc__registers_irq $0100 ; this is the best I could think of
.define tcc__regs_irq $0100



.base $80

.BANK 0 SLOT 0                  ; Defines the ROM bank and the slot it is inserted in memory.
.ORG 0                          ; .ORG 0 is really $8000, because the slot starts at $8000
.SECTION "EmptyVectors" SEMIFREE

EmptyHandler:
	.dw $0000 ; don't use empty handlers

EmptyNMI:
	rtl

.ENDS

.EMPTYFILL $00                  ; fill unused areas with $00, opcode for BRK.

.bank 0
.section "Snes_Init" SEMIFREE
tcc__snesinit:
	phk
	plb
	rep #$10	; X/Y 16 bit
	sep #$20    ; A is 8 bit
	lda     #$80    ; force blank
	sta     $2100   ; brightness + screen enable register 
	stz     $2101   ; Sprite register (size + address in VRAM) 
	stz     $2102   ; Sprite registers (address of sprite memory [OAM])
	stz     $2103   ;    ""                       ""
		; $2105   ; Mode 0, = Graphic mode register
		; $2106   ; noplanes, no mosaic, = Mosaic register
		; $2107   ; Plane 0 map VRAM location
		; $2108   ; Plane 1 map VRAM location
		; $2109   ; Plane 2 map VRAM location
		; $210A   ; Plane 3 map VRAM location
		; $210B   ; Plane 0+1 Tile data location
		; $210C   ; Plane 2+3 Tile data location
	ldx.w #$2105
-	stz 0,x
	inx
	cpx #$210d
	bne -

        ; $210D   ; Plane 0 scroll x (first 8 bits)
        ; $210D   ; Plane 0 scroll x (last 3 bits) #$0 - #$07ff
        ; $210E   ; Plane 0 scroll y (first 8 bits)
        ; $210E   ; Plane 0 scroll y (last 3 bits) #$0 - #$07ff
        ; $210F   ; Plane 1 scroll x (first 8 bits)
        ; $210F   ; Plane 1 scroll x (last 3 bits) #$0 - #$07ff
        ; $2110   ; Plane 1 scroll y (first 8 bits)
        ; $2110   ; Plane 1 scroll y (last 3 bits) #$0 - #$07ff
        ; $2111   ; Plane 2 scroll x (first 8 bits)
        ; $2111   ; Plane 2 scroll x (last 3 bits) #$0 - #$07ff
        ; $2112   ; Plane 2 scroll y (first 8 bits)
        ; $2112   ; Plane 2 scroll y (last 3 bits) #$0 - #$07ff
        ; $2113   ; Plane 3 scroll x (first 8 bits)
        ; $2113   ; Plane 3 scroll x (last 3 bits) #$0 - #$07ff
        ; $2114   ; Plane 3 scroll y (first 8 bits)
        ; $2114   ; Plane 3 scroll y (last 3 bits) #$0 - #$07ff
-	stz 0,x
	stz 0,x
	inx
	cpx #$2115
	bne -

        lda     #$80    ; increase VRAM address after writing to $2119
        sta     $2115   ; VRAM address increment register
        stz     $2116   ; VRAM address low
        stz     $2117   ; VRAM address high
        stz     $211A   ; Initial Mode 7 setting register
        stz     $211B   ; Mode 7 matrix parameter A register (low)
        lda     #$01
        sta     $211B   ; Mode 7 matrix parameter A register (high)

        ; $211C   ; Mode 7 matrix parameter B register (low)
        ; $211C   ; Mode 7 matrix parameter B register (high)
        ; $211D   ; Mode 7 matrix parameter C register (low)
        ; $211D   ; Mode 7 matrix parameter C register (high)
	ldx.w #$211c
-	stz 0,x
	stz 0,x
	inx
	cpx.w #$2121
	bne -

        ; $2123   ; BG1 & BG2 Window mask setting register
        ; $2124   ; BG3 & BG4 Window mask setting register
        ; $2125   ; OBJ & Color Window mask setting register
        ; $2126   ; Window 1 left position register
        ; $2127   ; Window 2 left position register
        ; $2128   ; Window 3 left position register
        ; $2129   ; Window 4 left position register
        ; $212A   ; BG1, BG2, BG3, BG4 Window Logic register
        ; $212B   ; OBJ, Color Window Logic Register (or,and,xor,xnor)
	ldx.w #$2123
-	stz 0,x
	inx
	cpx.w #$2130
	bne -

        lda     #$30
        sta     $2130   ; Color addition & screen addition init setting
        stz     $2131   ; Add/Sub sub designation for screen, sprite, color
        lda     #$E0
        sta     $2132   ; color data for addition/subtraction
        stz     $2133   ; Screen setting (interlace x,y/enable SFX data)
        stz     $4200   ; V-blank, interrupt, Joypad enable register
        lda     #$FF
        sta     $4201   ; Programmable I/O port

        ; $4202   ; Multiplicand A
        ; $4203   ; Multiplier B
        ; $4204   ; Multiplier C
        ; $4205   ; Multiplicand C
        ; $4206   ; Divisor B
        ; $4207   ; Horizontal Count Timer
        ; $4208   ; Horizontal Count Timer MSB (most significant bit)
        ; $4209   ; Vertical Count Timer
        ; $420A   ; Vertical Count Timer MSB
        ; $420B   ; General DMA enable (bits 0-7)
        ; $420C   ; Horizontal DMA (HDMA) enable (bits 0-7)
        ; $420D   ; Access cycle designation (slow/fast rom)
	ldx.w #$4202
-	stz 0,x
	inx
	cpx.w #$420D
	bne -
	
	lda #$01
	sta 0,x ;$420D
	
	;A=8, X/Y=16
;ClearPPU:
;OAM
	stz $2102
	stz $2103
	ldx #$0080
	lda #$E0
	
-	sta $2104
	sta $2104
	stz $2104
	stz $2104
	dex
	bne -
	
	ldx #$0020
-	stz $2104
	dex
	bne -
;VRAM
	lda #$80
	sta $2115 ; increment vram address on writes to $2119
	ldy #$0000
	sty $2116 ; begin at address $0000 in vram
	sty $4305 ; transfer $10000 bytes
	
	ldx #EmptyHandler
	lda #:EmptyHandler
	stx $4302 ; source address
	sta $4304 ; source bank
	
	ldx #$1809 ; alternate byte writes to $2118/$2119 fixed source
	stx $4300
	
	lda #$01
	sta $420B
	
;CGRAM
	stz $2121
	ldy #$200 ; 512 bytes
	sty $4305
	ldx #$2208 ;write a byte at a time to $2122 fixed source
	stx $4300
	
	lda #$01
	sta $420B
	
	rtl
.ends


;interrupts
VBlank:
	jml _fastVBlank
_fastVBlank:
	phb
	phd
	pha
	phx
	phy
	php
	
	sep #$20
	lda.l $004210
	; set data bank register to bss section
	lda #$7E
	pha
	plb
	
	
	rep #$30
	
	lda.w #tcc__registers_irq
	; Really inefficient without some sort of alignment for ramsections...
	; Have to make yet another slot to properly align this I think, might cause conflict with slot 1.
	tcd
	lda.w __nmi_handler
	sta.b tcc__r10
	lda.w __nmi_handler + 2
	cmp #$0070 ;Make sure it's not in (S)RAM.
	bcs +
	ora.w #$0080 ; make fast hack
+	sta.b tcc__r10h
	jsl tcc__jsl_r10
	
	jsl _libsfc_readJoypads

	plp
	ply
	plx
	pla
	pld
	plb
	
	RTI
	
IRQHandler:
	jml _fastIRQ
_fastIRQ:
	phb
	phd
	pha
	phx
	phy
	php
	
	sep #$20
	
	lda.l $004211
	
	lda #$7E
	pha
	plb
	rep #$30
	
	lda.w #tcc__registers_irq
	tcd
	lda.w __irq_handler
	sta.b tcc__r10
	lda.w __irq_handler + 2
	ora.w #$0080 ; make fast
	sta.b tcc__r10h
	jsl tcc__jsl_r10
	
	plp
	ply
	plx
	pla
	pld
	plb
	
	rti

.bank 0
.section ".start"

.accu 16
.index 16
.16bit

tcc__start: ;Execution starts here
	sei
	clc
	xce
	rep #$38
	ldx #$1FFF
	txs
	lda #$0000
	tcd
	;init registers
	jsl tcc__snesinit
	;clear WRAM
	rep #$30
	stz $00
	lda #$FFFF ; Transfer size (64k)
	ldx #$0000 ; Source
	ldy #$0001 ; Dest
	mvn $7E, $7E
	;lda #$FFFF
	ldx #$0000
	txy
	mvn $7F, $7E
	; direct page points to register set
	lda.w #tcc__registers
	tcd
	
	lda.w #EmptyNMI
	sta.b __nmi_handler
	sta.b __irq_handler
	lda.w #:EmptyNMI
	sta.b __nmi_handler + 2
	sta.b __irq_handler + 2
	
	; copy .data section to RAM
	ldx #0
-	lda.l __startsection.data,x
	sta.l __startramsectionram.data,x
	inx
	inx
	cpx #(__endsection.data-__startsection.data)
	bcc -
	
	; set data bank register to bss section
	pea $7E7E
	plb
	plb
	
	; this was some shitty code, unnecessary with RAM clear above
	; unless you would want RAM to persist on reset for some questionable reason.
	; clear .bss section
;	ldx #(((__endramsection.bss-__startramsection.bss) & $fffe) + 2)
;	beq +
;-	dex
;	dex
;	stz.w $2000, x
;	bne -
;+	
	
	; used by memcpy
	lda #$0054 ; mvn + 1st byte
	sta.b move_insn
	lda #$6000 ; 2nd byte + rts
	sta.b move_insn + 2
	
	; used by memmove
	lda #$0044 ; mvp + 1st byte
	sta.b move_backwards_insn
	lda #$6000 ; 2nd byte + rts
	sta.b move_backwards_insn + 2
	
	pea $ffff - __endramsectionram.data
	pea :__endramsectionram.data
	pea __endramsectionram.data
	jsr.l __malloc_init
	tsc
	clc
	adc.w #6
	tcs
	;pla
	;pla
	;pla
	
	stz.b tcc__r0
	stz.b tcc__r1
	
	jsr.l main|$800000
	
	; write exit code to $fffd
	lda.b tcc__r0
	sep #$20
	sta.l $fffd
	rep #$20
	stp
.ends

.base $00
