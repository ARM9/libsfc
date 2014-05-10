;	Size Table
; This table encompasses ROM, RAM (unused for now) and SRAM size
;	$00 =>	none
;	$01 =>	$800 bytes		==	2 Kilobytes, amount of SRAM in Super Mario World
;	$02 =>	$1000 bytes		==	4 Kilobytes
;	$03 =>	$2000 bytes		==	8 Kilobytes
;	$04 =>	$4000 bytes		==	16 Kilobytes
;	$05 =>	$8000 bytes		==	32 Kilobytes, amount of (S?)RAM in Mario Paint
;	$06 =>	$10000 bytes	==	64 Kilobytes, amount of Expansion RAM in Stunt Race FX
;	$07 =>	$20000 bytes	==	128 Kilobytes, amount of RAM in Dezaemon - Kaite Tsukutte Asoberu
;	$08 =>	$40000 bytes	==	256 Kilobytes, supposedly minimum for ROM
;	$09 =>	$80000 bytes	==	512 Kilobytes, amount of ROM in Super Mario World
;	$0A =>	$100000 bytes	==	1 Megabyte, amount of ROM in Mario Paint
;	$0B =>	$200000 bytes	==	2 Megabytes
;	$0C =>	$400000 bytes	==	4 Megabytes
; Valid range for ROM: $08-$0C, emulators may support $05-$0C
; Valid range for SRAM: $00-$07
; Valid range for RAM: $00-$07 (Use SRAM instead, this is only for SA-1 and GSU carts)

.MEMORYMAP
	SLOTSIZE $8000
	DEFAULTSLOT 0
	SLOT 0 $8000		;rodata slot
	SLOT 1 $0 $2000		;"directpage" slot, DO NOT USE!! Overall performance may suffer greatly(?)
	SLOT 2 $2000 $E000	;"bss" slot
	SLOT 3 $0 $10000	;7f slot
	SLOT 4 $0 $7FFF		;SRAM slot
.ENDME

.ROMBANKSIZE $8000		;lorom bank size
.ROMBANKS 16			;banks

.DEFINE MAP_MODE $30

.SNESHEADER
	ID "ARM9"	;4 letter id
	
	NAME "SNES C fast + DSP-1  "	;name in rom header
	;    "                     "
	
	FASTROM		;Gotta go fast
	LOROM
	
	CARTRIDGETYPE $05	; DSP enabled
	;Cartridgetype values:
	;$00	= ROM Only
	;$01	= ROM + RAM
	;$02	= ROM + RAM + SRAM(?)
	;For ROMs with an enhancement chip: $0*, $1*, $2*, $3*, $E*, $F* Which is: DSP, SuperFX, OBC1, SA-1, other, custom chip
	;higher than $02 indicates special hardware addon in cartridge,
	;$*3	= ROM + Enhancement Chip
	;$*4	= ROM + Enhancement Chip + RAM
	;$*5	= ROM + Enhancement Chip + RAM + SRAM(/Battery?)
	;$*6	= ROM + Enhancement Chip + SRAM(/Battery?)
	;Combining the two nibbles will give you different ROM types. If you want SuperFX with only ROM + chip, you need to input value $13.
	
	ROMSIZE $09			;\ 
	SRAMSIZE $02		;/See size table
	COUNTRY $01			; country code $00 = Japanese, $01 = NTSC, $02 to $0c = PAL
	LICENSEECODE $00	; Just leave $00
	VERSION $00			; $00 = 1.0, $01 = 1.01 etc.
.ENDSNES

.SNESNATIVEVECTOR
	COP EmptyHandler
	BRK $0000
	ABORT EmptyHandler
	NMI VBlank
	IRQ IRQHandler
.ENDNATIVEVECTOR

.SNESEMUVECTOR
	COP EmptyHandler
	ABORT EmptyHandler
	NMI EmptyHandler
	RESET Boot
	IRQBRK EmptyHandler
.ENDEMUVECTOR

