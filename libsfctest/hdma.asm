.include "hdr.asm"

.macro _hdma_routine_macro1
	lda.b #\1
	ora.l _WRAM_HDMAEN
	sta.l _WRAM_HDMAEN
	;tsb.w _WRAM_HDMAEN
.endm

.base $80
.section "libsfc_dma_assembly_code" superfree

setupDMA:
	
	
	
	rtl

setupHDMA:;(uint8_t channel, uint16_t mode+destination reg, uint16_t source_address, uint8_t source_bank);
	phb ; stack index : 1
	
	phk
	plb
	rep #$30
	lda 5,s
	sta $2100
	sep #$20

	
	plb
	rep #$20
	rtl

setupHDMAChannel1: ; 16 bit X = $AABB AA = destination register BB = mode , 16 bit Y = $AABB source address high and low bytes,  8 bit A = source bank
	phb
	phk
	plb
	stx $4310 ; mode
	;	$4311 = destination register
	sty $4312 ; low byte
	;	$4313 = high byte
	sta $4314
	
	_hdma_routine_macro1 $02
	plb
	rtl

setupHDMAChannel2:
	phb
	phk
	plb
	stx $4320 ; mode
	;	$4311 = destination register
	sty $4322 ; low byte
	;	$4313 = high byte
	sta $4324
	
	_hdma_routine_macro1 $04
	plb
	rtl

setupHDMAChannel3: ; 16 bit X = $AABB AA = destination register BB = mode , 16 bit Y = $AABB source address high and low bytes,  8 bit A = source bank
	phb
	phk
	plb
	stx $4330 ; mode
	;	$4311 = destination register
	sty $4332 ; low byte
	;	$4313 = high byte
	sta $4334
	
	_hdma_routine_macro1 $08
	plb
	rtl

setupHDMAChannel4:
	phb
	phk
	plb
	stx $4340 ; mode
	;	$4311 = destination register
	sty $4342 ; low byte
	;	$4313 = high byte
	sta $4344
	
	_hdma_routine_macro1 $10
	plb
	rtl
	
setupHDMAChannel5:
	phb
	phk
	plb
	stx $4350 ; mode
	;	$4311 = destination register
	sty $4352 ; low byte
	;	$4313 = high byte
	sta $4354
	
	_hdma_routine_macro1 $20
	plb
	rtl

setupHDMAChannel6:
	phb
	phk
	plb
	stx $4360 ; mode
	;	$4311 = destination register
	sty $4362 ; low byte
	;	$4313 = high byte
	sta $4364
	
	_hdma_routine_macro1 $40
	plb
	rtl
	
setupHDMAChannel7:
	phb
	phk
	plb
	stx $4370 ; mode
	;	$4311 = destination register
	sty $4372 ; low byte
	;	$4313 = high byte
	sta $4374
	
	_hdma_routine_macro1 $80
	plb
	rtl

.ends
.base $00
