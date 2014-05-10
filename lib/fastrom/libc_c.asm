
.accu 16
.index 16
.16bit
.define ____tccs___compact_locals 8
.define __free_locals 4
.define __malloc_locals 8
.define ____malloc_init_locals 0
.define __compact_locals 0
.define __realloc_locals 4
.define __strtoul_locals 4
.define __strtol_locals 0
.define __strtoull_locals 32
.define __strtoll_locals 8
.define ____tccs_skip_atoi_locals 2
.define ____tccs_number_locals 162
.define __vsnprintf_locals 48
.define __snprintf_locals 6
.define __vsprintf_locals 0
.define __sprintf_locals 6
.define __vsscanf_locals 104
.define __sscanf_locals 6
.define __isdigit_locals 0
.define __isxdigit_locals 0
.define __islower_locals 0
.define __toupper_locals 0
.define __isspace_locals 0
.define __isprint_locals 0
.define __strdup_locals 4

.section ".text_0x0" superfree

__tccs___compact:
.ifgr ____tccs___compact_locals 0
tsa
sec
sbc #____tccs___compact_locals
tas
.endif
lda 5 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
sta -8 + ____tccs___compact_locals + 1,s
lda.b tcc__r0h
sta -6 + ____tccs___compact_locals + 1,s
stz.b tcc__r0
lda.b tcc__r0
sta -2 + ____tccs___compact_locals + 1,s
__local_6:
lda 3 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
lda.b [tcc__r0]
sta.b tcc__r1
sta -4 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_0
+
lda -4 + ____tccs___compact_locals + 1,s
and.w #1
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_1
+
lda -2 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_2
+
lda -8 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda -6 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
lda -2 + ____tccs___compact_locals + 1,s
sta.b [tcc__r0]
lda -2 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs___compact_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bcs ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_3
+
lda -8 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda -6 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
jmp.w __local_4
__local_3:
__local_2:
stz.b tcc__r0
lda.b tcc__r0
sta -2 + ____tccs___compact_locals + 1,s
lda -4 + ____tccs___compact_locals + 1,s
and.w #65534
sta.b tcc__r0
lda 3 + ____tccs___compact_locals + 1,s
sta.b tcc__r1
lda 5 + ____tccs___compact_locals + 1,s
sta.b tcc__r1h
clc
lda.b tcc__r1
adc.b tcc__r0
sta.b tcc__r1
sta 3 + ____tccs___compact_locals + 1,s
sta -8 + ____tccs___compact_locals + 1,s
lda.b tcc__r1h
sta -6 + ____tccs___compact_locals + 1,s
bra __local_5
__local_1:
lda -2 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda -4 + ____tccs___compact_locals + 1,s
clc
adc.b tcc__r0
sta -2 + ____tccs___compact_locals + 1,s
lda 3 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
lda -4 + ____tccs___compact_locals + 1,s
sta.b tcc__r1
clc
adc.b tcc__r0
sta.b tcc__r0
sta 3 + ____tccs___compact_locals + 1,s
__local_5:
jmp.w __local_6
__local_0:
lda -2 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_7
+
lda -8 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda -6 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
lda -2 + ____tccs___compact_locals + 1,s
sta.b [tcc__r0]
lda -2 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs___compact_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bcs ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_8
+
lda -8 + ____tccs___compact_locals + 1,s
sta.b tcc__r0
lda -6 + ____tccs___compact_locals + 1,s
sta.b tcc__r0h
bra __local_9
__local_8:
__local_7:
stz.b tcc__r0
lda.w #0
sta.b tcc__r0h
__local_4:
__local_9:
__local_10:
.ifgr ____tccs___compact_locals 0
tsa
clc
adc #____tccs___compact_locals
tas
.endif
rtl
.ends

.section ".text_0x1" superfree

free:
.ifgr __free_locals 0
tsa
sec
sbc #__free_locals
tas
.endif
lda 3 + __free_locals + 1,s
sta.b tcc__r0
lda 5 + __free_locals + 1,s
sta.b tcc__r0h
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_11
+
lda 5 + __free_locals + 1,s
sta.b tcc__r0h
lda 3 + __free_locals + 1,s
dec a
dec a
sta.b tcc__r0
sta -4 + __free_locals + 1,s
lda.b tcc__r0h
sta -2 + __free_locals + 1,s
lda -4 + __free_locals + 1,s
sta.b tcc__r0
lda -2 + __free_locals + 1,s
sta.b tcc__r0h
lda.b [tcc__r0]
and.w #65534
sta.b tcc__r1
sta.b [tcc__r0]
__local_11:
.ifgr __free_locals 0
tsa
clc
adc #__free_locals
tas
.endif
rtl
.ends

.section ".text_0x2" superfree

malloc:
.ifgr __malloc_locals 0
tsa
sec
sbc #__malloc_locals
tas
.endif
lda 3 + __malloc_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_12
+
stz.b tcc__r0
lda.w #0
sta.b tcc__r0h
jmp.w __local_13
__local_12:
lda 3 + __malloc_locals + 1,s
clc
adc.w #5
sta 3 + __malloc_locals + 1,s
sta.b tcc__r0
lsr.b tcc__r0
lsr.b tcc__r0
lda.b tcc__r0
sta 3 + __malloc_locals + 1,s
asl a
asl a
sta 3 + __malloc_locals + 1,s
lda.w __tccs_msys + 0
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
brl __local_14
+
lda.w __tccs_msys + 0
sta.b tcc__r0
lda.w __tccs_msys + 0 + 2
sta.b tcc__r0h
lda 3 + __malloc_locals + 1,s
sta.b tcc__r1
lda.b [tcc__r0]
sta.b tcc__r2
ldx #1
lda.b tcc__r1
sec
sbc.b tcc__r2
tay
beq +
bcs ++
+ dex
++
stx.b tcc__r5
txa
beq +
__local_14:
brl __local_15
+
jmp.w __local_16
__local_15:
lda 3 + __malloc_locals + 1,s
pha
lda.w __tccs_msys + 4
sta.b tcc__r0
lda.w __tccs_msys + 4 + 2
pha
pei (tcc__r0)
jsr.l __tccs___compact
tsa
clc
adc #6
tas
lda.b tcc__r0
sta.w __tccs_msys + 0
lda.b tcc__r0h
sta.w __tccs_msys + 0 + 2
lda.w __tccs_msys + 0
sta.b tcc__r0
ldx #1
sec
sbc #0
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_17
+
stz.b tcc__r0
lda.w #0
sta.b tcc__r0h
jmp.w __local_18
__local_17:
__local_16:
lda.w __tccs_msys + 0 + 2
sta.b tcc__r0h
lda.w __tccs_msys + 0
sta.b tcc__r0
sta -8 + __malloc_locals + 1,s
lda.b tcc__r0h
sta -6 + __malloc_locals + 1,s
lda.w __tccs_msys + 0
sta.b tcc__r0
lda.w __tccs_msys + 0 + 2
sta.b tcc__r0h
lda.b [tcc__r0]
sta -2 + __malloc_locals + 1,s
lda 3 + __malloc_locals + 1,s
inc a
inc a
sta.b tcc__r0
lda -2 + __malloc_locals + 1,s
sta.b tcc__r1
ldx #1
sec
sbc.b tcc__r0
tay
bcs ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_19
+
lda -8 + __malloc_locals + 1,s
sta.b tcc__r0
lda -6 + __malloc_locals + 1,s
sta.b tcc__r0h
lda 3 + __malloc_locals + 1,s
clc
adc.b tcc__r0
sta.b tcc__r0
sta.w __tccs_msys + 0
lda.b tcc__r0h
sta.w __tccs_msys + 0 + 2
lda.w __tccs_msys + 0
sta.b tcc__r0
lda.w __tccs_msys + 0 + 2
sta.b tcc__r0h
lda -2 + __malloc_locals + 1,s
sta.b tcc__r1
lda 3 + __malloc_locals + 1,s
sta.b tcc__r2
sec
lda.b tcc__r1
sbc.b tcc__r2
sta.b tcc__r1
sta.b [tcc__r0]
bra __local_20
__local_19:
stz.b tcc__r0
stz.b tcc__r0h
lda.b tcc__r0
sta.w __tccs_msys + 0
lda.b tcc__r0h
sta.w __tccs_msys + 0 + 2
lda -2 + __malloc_locals + 1,s
sta.b tcc__r0
sta 3 + __malloc_locals + 1,s
__local_20:
lda -8 + __malloc_locals + 1,s
sta.b tcc__r0
lda -6 + __malloc_locals + 1,s
sta.b tcc__r0h
lda 3 + __malloc_locals + 1,s
ora.w #1
sta.b tcc__r1
sta.b [tcc__r0]
lda -6 + __malloc_locals + 1,s
sta.b tcc__r0h
lda -8 + __malloc_locals + 1,s
sta.b tcc__r0
inc.b tcc__r0
inc.b tcc__r0
__local_13:
__local_18:
__local_21:
.ifgr __malloc_locals 0
tsa
clc
adc #__malloc_locals
tas
.endif
rtl
.ends

.section ".text_0x3" superfree

__malloc_init:
.ifgr ____malloc_init_locals 0
tsa
sec
sbc #____malloc_init_locals
tas
.endif
lda 7 + ____malloc_init_locals + 1,s
sta.b tcc__r0
lsr.b tcc__r0
lsr.b tcc__r0
lda.b tcc__r0
sta 7 + ____malloc_init_locals + 1,s
asl a
asl a
sta.b tcc__r0
sta 7 + ____malloc_init_locals + 1,s
lda 5 + ____malloc_init_locals + 1,s
sta.b tcc__r0h
lda 3 + ____malloc_init_locals + 1,s
sta.b tcc__r0
sta.w __tccs_msys + 4
lda.b tcc__r0h
sta.w __tccs_msys + 4 + 2
lda.b tcc__r0
sta.w __tccs_msys + 0
lda.b tcc__r0h
sta.w __tccs_msys + 0 + 2
lda.w __tccs_msys + 0
sta.b tcc__r0
lda.w __tccs_msys + 0 + 2
sta.b tcc__r0h
lda.w __tccs_msys + 4
sta.b tcc__r1
lda.w __tccs_msys + 4 + 2
sta.b tcc__r1h
lda 7 + ____malloc_init_locals + 1,s
dec a
dec a
sta.b tcc__r2
sta.b [tcc__r1]
sta.b [tcc__r0]
lda 3 + ____malloc_init_locals + 1,s
sta.b tcc__r0
lda 5 + ____malloc_init_locals + 1,s
sta.b tcc__r0h
lda 7 + ____malloc_init_locals + 1,s
clc
adc.b tcc__r0
dec a
dec a
sta.b tcc__r0
stz.b tcc__r1
lda.b tcc__r1
sta.b [tcc__r0]
.ifgr ____malloc_init_locals 0
tsa
clc
adc #____malloc_init_locals
tas
.endif
rtl
.ends

.section ".text_0x4" superfree

compact:
.ifgr __compact_locals 0
tsa
sec
sbc #__compact_locals
tas
.endif
pea.w 65535
lda.w __tccs_msys + 4
sta.b tcc__r0
lda.w __tccs_msys + 4 + 2
pha
pei (tcc__r0)
jsr.l __tccs___compact
tsa
clc
adc #6
tas
lda.b tcc__r0
sta.w __tccs_msys + 0
lda.b tcc__r0h
sta.w __tccs_msys + 0 + 2
.ifgr __compact_locals 0
tsa
clc
adc #__compact_locals
tas
.endif
rtl
.ends

.section ".text_0x5" superfree

realloc:
.ifgr __realloc_locals 0
tsa
sec
sbc #__realloc_locals
tas
.endif
lda 7 + __realloc_locals + 1,s
pha
jsr.l malloc
pla
lda.b tcc__r0
sta -4 + __realloc_locals + 1,s
lda.b tcc__r0h
sta -2 + __realloc_locals + 1,s
lda 7 + __realloc_locals + 1,s
pha
lda 5 + __realloc_locals + 1,s
sta.b tcc__r0
lda 7 + __realloc_locals + 1,s
pha
pei (tcc__r0)
lda 2 + __realloc_locals + 1,s
sta.b tcc__r0
lda 4 + __realloc_locals + 1,s
pha
pei (tcc__r0)
jsr.l memcpy
tsa
clc
adc #10
tas
lda 3 + __realloc_locals + 1,s
sta.b tcc__r0
lda 5 + __realloc_locals + 1,s
pha
pei (tcc__r0)
jsr.l free
tsa
clc
adc #4
tas
lda -4 + __realloc_locals + 1,s
sta.b tcc__r0
lda -2 + __realloc_locals + 1,s
sta.b tcc__r0h
__local_22:
.ifgr __realloc_locals 0
tsa
clc
adc #__realloc_locals
tas
.endif
rtl
.ends

.section ".text_0x6" superfree

strtoul:
.ifgr __strtoul_locals 0
tsa
sec
sbc #__strtoul_locals
tas
.endif
stz.b tcc__r0
lda.b tcc__r0
sta -2 + __strtoul_locals + 1,s
lda 11 + __strtoul_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_23
+
jmp.w __local_24
__local_23:
lda.w #10
sta 11 + __strtoul_locals + 1,s
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #48
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_25
+
lda.w #8
sta.b tcc__r0
sta 11 + __strtoul_locals + 1,s
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 3 + __strtoul_locals + 1,s
lda.b tcc__r0h
sta 5 + __strtoul_locals + 1,s
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #120
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_26
+
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoul_locals + 1,s
inc a
sta.b tcc__r0
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isxdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
__local_26:
brl __local_27
+
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 3 + __strtoul_locals + 1,s
lda.b tcc__r0h
sta 5 + __strtoul_locals + 1,s
lda.w #16
sta.b tcc__r0
sta 11 + __strtoul_locals + 1,s
__local_27:
__local_25:
__local_24:
__local_33:
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isxdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_28
+
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_29
+
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sec
sbc.w #48
sta.b tcc__r1
bra __local_30
__local_29:
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l toupper
tsa
clc
adc #1
tas
sec
lda.b tcc__r0
sbc.w #65
clc
adc.w #10
sta.b tcc__r0
bra __local_31
__local_30:
lda.b tcc__r1
sta.b tcc__r0
lda.b tcc__r1h
sta.b tcc__r0h
__local_31:
lda.b tcc__r0
sta -4 + __strtoul_locals + 1,s
lda 11 + __strtoul_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
__local_28:
brl __local_32
+
lda -2 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 11 + __strtoul_locals + 1,s
sta.b tcc__r1
sta.b tcc__r9
lda.b tcc__r0
sta.b tcc__r10
jsr.l tcc__mul
sta.b tcc__r0
lda -4 + __strtoul_locals + 1,s
clc
adc.b tcc__r0
sta.b tcc__r0
sta -2 + __strtoul_locals + 1,s
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 3 + __strtoul_locals + 1,s
lda.b tcc__r0h
sta 5 + __strtoul_locals + 1,s
jmp.w __local_33
__local_32:
lda 7 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 9 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_34
+
lda 7 + __strtoul_locals + 1,s
sta.b tcc__r0
lda 9 + __strtoul_locals + 1,s
sta.b tcc__r0h
lda 5 + __strtoul_locals + 1,s
sta.b tcc__r1h
lda 3 + __strtoul_locals + 1,s
sta.b tcc__r1
ldy #0
sta.b [tcc__r0],y
lda.b tcc__r1h
iny
iny
sta.b [tcc__r0],y
__local_34:
lda -2 + __strtoul_locals + 1,s
sta.b tcc__r0
__local_35:
.ifgr __strtoul_locals 0
tsa
clc
adc #__strtoul_locals
tas
.endif
rtl
.ends

.section ".text_0x7" superfree

strtol:
.ifgr __strtol_locals 0
tsa
sec
sbc #__strtol_locals
tas
.endif
lda 3 + __strtol_locals + 1,s
sta.b tcc__r0
lda 5 + __strtol_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #45
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_36
+
lda 5 + __strtol_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtol_locals + 1,s
inc a
sta.b tcc__r0
lda 11 + __strtol_locals + 1,s
pha
lda 9 + __strtol_locals + 1,s
sta.b tcc__r1
lda 11 + __strtol_locals + 1,s
pha
pei (tcc__r1)
pei (tcc__r0h)
pei (tcc__r0)
jsr.l strtoul
tsa
clc
adc #10
tas
lda.w #0
sec
sbc.b tcc__r0
sta.b tcc__r1
sta.b tcc__r0
lda.b tcc__r1h
sta.b tcc__r0h
bra __local_37
__local_36:
lda 11 + __strtol_locals + 1,s
pha
lda 9 + __strtol_locals + 1,s
sta.b tcc__r0
lda 11 + __strtol_locals + 1,s
pha
pei (tcc__r0)
lda 9 + __strtol_locals + 1,s
sta.b tcc__r0
lda 11 + __strtol_locals + 1,s
pha
pei (tcc__r0)
jsr.l strtoul
tsa
clc
adc #10
tas
__local_37:
__local_38:
.ifgr __strtol_locals 0
tsa
clc
adc #__strtol_locals
tas
.endif
rtl
.ends

.section ".text_0x8" superfree

strtoull:
.ifgr __strtoull_locals 0
tsa
sec
sbc #__strtoull_locals
tas
.endif
stz.b tcc__r0
stz.b tcc__r1
lda.b tcc__r0
sta -4 + __strtoull_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-4 + __strtoull_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
lda 11 + __strtoull_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_39
+
jmp.w __local_40
__local_39:
lda.w #10
sta 11 + __strtoull_locals + 1,s
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #48
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_41
+
lda.w #8
sta.b tcc__r0
sta 11 + __strtoull_locals + 1,s
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 3 + __strtoull_locals + 1,s
lda.b tcc__r0h
sta 5 + __strtoull_locals + 1,s
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #120
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_42
+
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoull_locals + 1,s
inc a
sta.b tcc__r0
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isxdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
__local_42:
brl __local_43
+
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 3 + __strtoull_locals + 1,s
lda.b tcc__r0h
sta 5 + __strtoull_locals + 1,s
lda.w #16
sta.b tcc__r0
sta 11 + __strtoull_locals + 1,s
__local_43:
__local_41:
__local_40:
__local_54:
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isxdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_44
+
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_45
+
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sec
sbc.w #48
sta.b tcc__r1
jmp.w __local_46
__local_45:
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l islower
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_47
+
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l toupper
tsa
clc
adc #1
tas
bra __local_48
__local_47:
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
bra __local_49
__local_48:
lda.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
__local_49:
sec
lda.b tcc__r1
sbc.w #65
clc
adc.w #10
sta.b tcc__r1
__local_46:
__local_50:
lda.b tcc__r1h
sta.b tcc__r0h
lda.b tcc__r1
sta.b tcc__r0
ldy.w #15
-
cmp #$8000
ror a
dey
bne -
+
sta.b tcc__r0
lda.b tcc__r1
sta -8 + __strtoull_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __strtoull_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r0
sta.b [tcc__r2]
lda 11 + __strtoull_locals + 1,s
sta.b tcc__r2
lda.w #0
sta.b tcc__r3
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r3
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_51
+
tya
bne __local_52
ldx #1
lda.b tcc__r1
sec
sbc.b tcc__r2
tay
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
__local_51:
brl __local_53
+
__local_52:
__local_44:
lda 11 + __strtoull_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1
sta -12 + __strtoull_locals + 1,s
lda.b tcc__r1
sta -10 + __strtoull_locals + 1,s
lda -4 + __strtoull_locals + 1,s
sta.b tcc__r2
stz.b tcc__r0h
tsa
clc
adc #(-4 + __strtoull_locals + 1) + 2
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
lda.b tcc__r2
sta -16 + __strtoull_locals + 1,s
lda.b tcc__r2h
sta -14 + __strtoull_locals + 1,s
lda.b tcc__r1
sta -20 + __strtoull_locals + 1,s
lda.b tcc__r1h
sta -18 + __strtoull_locals + 1,s
lda -12 + __strtoull_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(-12 + __strtoull_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
lda -16 + __strtoull_locals + 1,s
sta.b tcc__r1
sta.b tcc__r9
stz.b tcc__r9h
lda.b tcc__r0
sta.b tcc__r10
stz.b tcc__r10h
jsr.l tcc__mull
stx.b tcc__r3
sty.b tcc__r4
lda -16 + __strtoull_locals + 1,s
sta.b tcc__r1
lda.b tcc__r2
sta.b tcc__r9
lda.b tcc__r1
sta.b tcc__r10
jsr.l tcc__mul
sta.b tcc__r1
lda -20 + __strtoull_locals + 1,s
sta.b tcc__r2
lda.b tcc__r0
sta.b tcc__r9
lda.b tcc__r2
sta.b tcc__r10
jsr.l tcc__mul
clc
adc.b tcc__r1
sta.b tcc__r1
clc
adc.b tcc__r3
sta.b tcc__r3
lda.b tcc__r4
sta -24 + __strtoull_locals + 1,s
lda.b tcc__r4h
sta -22 + __strtoull_locals + 1,s
lda.b tcc__r3
sta -28 + __strtoull_locals + 1,s
lda.b tcc__r3h
sta -26 + __strtoull_locals + 1,s
lda -8 + __strtoull_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(-8 + __strtoull_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
lda -24 + __strtoull_locals + 1,s
clc
adc.b tcc__r0
sta.b tcc__r1
lda -28 + __strtoull_locals + 1,s
adc.b tcc__r2
sta.b tcc__r0
lda.b tcc__r1
sta -4 + __strtoull_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-4 + __strtoull_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r0
sta.b [tcc__r2]
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 3 + __strtoull_locals + 1,s
lda.b tcc__r0h
sta 5 + __strtoull_locals + 1,s
jmp.w __local_54
__local_53:
lda 7 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 9 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_55
+
lda 7 + __strtoull_locals + 1,s
sta.b tcc__r0
lda 9 + __strtoull_locals + 1,s
sta.b tcc__r0h
lda 5 + __strtoull_locals + 1,s
sta.b tcc__r1h
lda 3 + __strtoull_locals + 1,s
sta.b tcc__r1
ldy #0
sta.b [tcc__r0],y
lda.b tcc__r1h
iny
iny
sta.b [tcc__r0],y
__local_55:
lda -4 + __strtoull_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(-4 + __strtoull_locals + 1) + 2
sta.b tcc__r1
sta -32 + __strtoull_locals + 1,s
lda.b tcc__r1h
sta -30 + __strtoull_locals + 1,s
lda -32 + __strtoull_locals + 1,s
sta.b tcc__r10
lda -30 + __strtoull_locals + 1,s
sta.b tcc__r10h
lda.b [tcc__r10]
sta.b tcc__r1
__local_56:
.ifgr __strtoull_locals 0
tsa
clc
adc #__strtoull_locals
tas
.endif
rtl
.ends

.section ".text_0x9" superfree

strtoll:
.ifgr __strtoll_locals 0
tsa
sec
sbc #__strtoll_locals
tas
.endif
lda 3 + __strtoll_locals + 1,s
sta.b tcc__r0
lda 5 + __strtoll_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #45
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_57
+
lda 5 + __strtoll_locals + 1,s
sta.b tcc__r0h
lda 3 + __strtoll_locals + 1,s
inc a
sta.b tcc__r0
lda 11 + __strtoll_locals + 1,s
pha
lda 9 + __strtoll_locals + 1,s
sta.b tcc__r1
lda 11 + __strtoll_locals + 1,s
pha
pei (tcc__r1)
pei (tcc__r0h)
pei (tcc__r0)
jsr.l strtoull
tsa
clc
adc #10
tas
stz.b tcc__r2
lda.w #0
sta.b tcc__r3
sec
lda.b tcc__r2
sbc.b tcc__r0
sta.b tcc__r2
lda.b tcc__r3
sbc.b tcc__r1
sta.b tcc__r3
lda.b tcc__r2
sta.b tcc__r0
lda.b tcc__r2h
sta.b tcc__r0h
lda.b tcc__r3
sta.b tcc__r1
lda.b tcc__r3h
sta.b tcc__r1h
jmp.w __local_58
__local_57:
lda 11 + __strtoll_locals + 1,s
pha
lda 9 + __strtoll_locals + 1,s
sta.b tcc__r0
lda 11 + __strtoll_locals + 1,s
pha
pei (tcc__r0)
lda 9 + __strtoll_locals + 1,s
sta.b tcc__r0
lda 11 + __strtoll_locals + 1,s
pha
pei (tcc__r0)
jsr.l strtoull
tsa
clc
adc #10
tas
lda.b tcc__r0
sta -4 + __strtoll_locals + 1,s
lda.b tcc__r1
sta -2 + __strtoll_locals + 1,s
lda -4 + __strtoll_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(-4 + __strtoll_locals + 1) + 2
sta.b tcc__r1
sta -8 + __strtoll_locals + 1,s
lda.b tcc__r1h
sta -6 + __strtoll_locals + 1,s
lda -8 + __strtoll_locals + 1,s
sta.b tcc__r10
lda -6 + __strtoll_locals + 1,s
sta.b tcc__r10h
lda.b [tcc__r10]
sta.b tcc__r1
__local_58:
__local_59:
.ifgr __strtoll_locals 0
tsa
clc
adc #__strtoll_locals
tas
.endif
rtl
.ends

.section ".text_0xa" superfree

__tccs_skip_atoi:
.ifgr ____tccs_skip_atoi_locals 0
tsa
sec
sbc #____tccs_skip_atoi_locals
tas
.endif
stz.b tcc__r0
lda.b tcc__r0
sta -2 + ____tccs_skip_atoi_locals + 1,s
__local_61:
lda 3 + ____tccs_skip_atoi_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_skip_atoi_locals + 1,s
sta.b tcc__r0h
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_60
+
lda -2 + ____tccs_skip_atoi_locals + 1,s
sta.b tcc__r0
lda.w #10
sta.b tcc__r9
lda.b tcc__r0
sta.b tcc__r10
jsr.l tcc__mul
sta.b tcc__r0
lda 3 + ____tccs_skip_atoi_locals + 1,s
sta.b tcc__r1
lda 5 + ____tccs_skip_atoi_locals + 1,s
sta.b tcc__r1h
ldy #0
lda.b [tcc__r1],y
sta.b tcc__r2
iny
iny
lda.b [tcc__r1],y
sta.b tcc__r2h
lda.b tcc__r2
sta.b tcc__r3
lda.b tcc__r2h
sta.b tcc__r3h
inc.b tcc__r2
lda.b tcc__r2
ldy #0
sta.b [tcc__r1],y
lda.b tcc__r2h
iny
iny
sta.b [tcc__r1],y
lda.w #0
sep #$20
lda.b [tcc__r3]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
clc
adc.b tcc__r0
sec
sbc.w #48
sta.b tcc__r0
sta -2 + ____tccs_skip_atoi_locals + 1,s
jmp.w __local_61
__local_60:
lda -2 + ____tccs_skip_atoi_locals + 1,s
sta.b tcc__r0
__local_62:
.ifgr ____tccs_skip_atoi_locals 0
tsa
clc
adc #____tccs_skip_atoi_locals
tas
.endif
rtl
.ends

.section ".text_0xb" superfree

__tccs_number:
.ifgr ____tccs_number_locals 0
tsa
sec
sbc #____tccs_number_locals
tas
.endif
sep #$20
lda.b #48
sta -109 + ____tccs_number_locals + 1,s
lda.b #49
sta -108 + ____tccs_number_locals + 1,s
lda.b #50
sta -107 + ____tccs_number_locals + 1,s
lda.b #51
sta -106 + ____tccs_number_locals + 1,s
lda.b #52
sta -105 + ____tccs_number_locals + 1,s
lda.b #53
sta -104 + ____tccs_number_locals + 1,s
lda.b #54
sta -103 + ____tccs_number_locals + 1,s
lda.b #55
sta -102 + ____tccs_number_locals + 1,s
lda.b #56
sta -101 + ____tccs_number_locals + 1,s
lda.b #57
sta -100 + ____tccs_number_locals + 1,s
lda.b #97
sta -99 + ____tccs_number_locals + 1,s
lda.b #98
sta -98 + ____tccs_number_locals + 1,s
lda.b #99
sta -97 + ____tccs_number_locals + 1,s
lda.b #100
sta -96 + ____tccs_number_locals + 1,s
lda.b #101
sta -95 + ____tccs_number_locals + 1,s
lda.b #102
sta -94 + ____tccs_number_locals + 1,s
lda.b #103
sta -93 + ____tccs_number_locals + 1,s
lda.b #104
sta -92 + ____tccs_number_locals + 1,s
lda.b #105
sta -91 + ____tccs_number_locals + 1,s
lda.b #106
sta -90 + ____tccs_number_locals + 1,s
lda.b #107
sta -89 + ____tccs_number_locals + 1,s
lda.b #108
sta -88 + ____tccs_number_locals + 1,s
lda.b #109
sta -87 + ____tccs_number_locals + 1,s
lda.b #110
sta -86 + ____tccs_number_locals + 1,s
lda.b #111
sta -85 + ____tccs_number_locals + 1,s
lda.b #112
sta -84 + ____tccs_number_locals + 1,s
lda.b #113
sta -83 + ____tccs_number_locals + 1,s
lda.b #114
sta -82 + ____tccs_number_locals + 1,s
lda.b #115
sta -81 + ____tccs_number_locals + 1,s
lda.b #116
sta -80 + ____tccs_number_locals + 1,s
lda.b #117
sta -79 + ____tccs_number_locals + 1,s
lda.b #118
sta -78 + ____tccs_number_locals + 1,s
lda.b #119
sta -77 + ____tccs_number_locals + 1,s
lda.b #120
sta -76 + ____tccs_number_locals + 1,s
lda.b #121
sta -75 + ____tccs_number_locals + 1,s
lda.b #122
sta -74 + ____tccs_number_locals + 1,s
rep #$20
lda.w #0
sep #$20
sta -73 + ____tccs_number_locals + 1,s
lda.b #48
sta -146 + ____tccs_number_locals + 1,s
lda.b #49
sta -145 + ____tccs_number_locals + 1,s
lda.b #50
sta -144 + ____tccs_number_locals + 1,s
lda.b #51
sta -143 + ____tccs_number_locals + 1,s
lda.b #52
sta -142 + ____tccs_number_locals + 1,s
lda.b #53
sta -141 + ____tccs_number_locals + 1,s
lda.b #54
sta -140 + ____tccs_number_locals + 1,s
lda.b #55
sta -139 + ____tccs_number_locals + 1,s
lda.b #56
sta -138 + ____tccs_number_locals + 1,s
lda.b #57
sta -137 + ____tccs_number_locals + 1,s
lda.b #65
sta -136 + ____tccs_number_locals + 1,s
lda.b #66
sta -135 + ____tccs_number_locals + 1,s
lda.b #67
sta -134 + ____tccs_number_locals + 1,s
lda.b #68
sta -133 + ____tccs_number_locals + 1,s
lda.b #69
sta -132 + ____tccs_number_locals + 1,s
lda.b #70
sta -131 + ____tccs_number_locals + 1,s
lda.b #71
sta -130 + ____tccs_number_locals + 1,s
lda.b #72
sta -129 + ____tccs_number_locals + 1,s
lda.b #73
sta -128 + ____tccs_number_locals + 1,s
lda.b #74
sta -127 + ____tccs_number_locals + 1,s
lda.b #75
sta -126 + ____tccs_number_locals + 1,s
lda.b #76
sta -125 + ____tccs_number_locals + 1,s
lda.b #77
sta -124 + ____tccs_number_locals + 1,s
lda.b #78
sta -123 + ____tccs_number_locals + 1,s
lda.b #79
sta -122 + ____tccs_number_locals + 1,s
lda.b #80
sta -121 + ____tccs_number_locals + 1,s
lda.b #81
sta -120 + ____tccs_number_locals + 1,s
lda.b #82
sta -119 + ____tccs_number_locals + 1,s
lda.b #83
sta -118 + ____tccs_number_locals + 1,s
lda.b #84
sta -117 + ____tccs_number_locals + 1,s
lda.b #85
sta -116 + ____tccs_number_locals + 1,s
lda.b #86
sta -115 + ____tccs_number_locals + 1,s
lda.b #87
sta -114 + ____tccs_number_locals + 1,s
lda.b #88
sta -113 + ____tccs_number_locals + 1,s
lda.b #89
sta -112 + ____tccs_number_locals + 1,s
lda.b #90
sta -111 + ____tccs_number_locals + 1,s
rep #$20
lda.w #0
sep #$20
sta -110 + ____tccs_number_locals + 1,s
rep #$20
lda 21 + ____tccs_number_locals + 1,s
and.w #64
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_63
+
bra __local_64
__local_63:
stz.b tcc__r0h
tsa
clc
adc #(-109 + ____tccs_number_locals + 1)
sta.b tcc__r0
bra __local_65
__local_64:
stz.b tcc__r0h
tsa
clc
adc #(-146 + ____tccs_number_locals + 1)
sta.b tcc__r0
__local_65:
lda.b tcc__r0
sta -72 + ____tccs_number_locals + 1,s
lda.b tcc__r0h
sta -70 + ____tccs_number_locals + 1,s
lda 21 + ____tccs_number_locals + 1,s
and.w #16
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_66
+
lda 21 + ____tccs_number_locals + 1,s
and.w #65534
sta.b tcc__r0
sta 21 + ____tccs_number_locals + 1,s
__local_66:
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #2
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
beq +
brl __local_67
+
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #36
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
beq +
__local_67:
brl __local_68
+
bra __local_69
__local_68:
stz.b tcc__r0
lda.w #0
sta.b tcc__r0h
jmp.w __local_70
__local_69:
lda 21 + ____tccs_number_locals + 1,s
and.w #1
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_71
+
bra __local_72
__local_71:
lda.w #32
sta.b tcc__r0
bra __local_73
__local_72:
lda.w #48
sta.b tcc__r0
__local_73:
sep #$20
lda.b tcc__r0
sta -1 + ____tccs_number_locals + 1,s
rep #$20
lda.w #0
sep #$20
sta -2 + ____tccs_number_locals + 1,s
rep #$20
lda 21 + ____tccs_number_locals + 1,s
and.w #2
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_74
+
lda 11 + ____tccs_number_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
stz.b tcc__r1
lda.w #0
sta.b tcc__r3
ldx #1
lda.b tcc__r2
sec
sbc.b tcc__r3
tay
beq +++
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_75
+
tya
bne __local_76
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
__local_75:
brl __local_77
+
__local_76:
lda.w #45
sep #$20
sta -2 + ____tccs_number_locals + 1,s
rep #$20
stz.b tcc__r0
stz.b tcc__r1
lda.b tcc__r0
sta -152 + ____tccs_number_locals + 1,s
lda.b tcc__r0h
sta -150 + ____tccs_number_locals + 1,s
lda.b tcc__r1
sta -156 + ____tccs_number_locals + 1,s
lda.b tcc__r1h
sta -154 + ____tccs_number_locals + 1,s
lda 11 + ____tccs_number_locals + 1,s
sta.b tcc__r2
stz.b tcc__r0h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
lda -152 + ____tccs_number_locals + 1,s
sec
sbc.b tcc__r2
sta.b tcc__r0
lda -156 + ____tccs_number_locals + 1,s
sbc.b tcc__r1
sta.b tcc__r2
lda.b tcc__r0
sta 11 + ____tccs_number_locals + 1,s
stz.b tcc__r1h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r1
lda.b tcc__r2
sta.b [tcc__r1]
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
jmp.w __local_78
__local_77:
lda 21 + ____tccs_number_locals + 1,s
and.w #4
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_79
+
sep #$20
lda.b #43
sta -2 + ____tccs_number_locals + 1,s
rep #$20
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
bra __local_80
__local_79:
lda 21 + ____tccs_number_locals + 1,s
and.w #8
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_81
+
sep #$20
lda.b #32
sta -2 + ____tccs_number_locals + 1,s
rep #$20
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
__local_81:
__local_80:
__local_78:
__local_74:
lda 21 + ____tccs_number_locals + 1,s
and.w #32
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_82
+
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #16
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_83
+
lda 17 + ____tccs_number_locals + 1,s
dec a
dec a
sta.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
bra __local_84
__local_83:
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #8
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_85
+
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
__local_85:
__local_84:
__local_82:
stz.b tcc__r0
lda.b tcc__r0
sta -148 + ____tccs_number_locals + 1,s
lda 11 + ____tccs_number_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
stz.b tcc__r1
lda.w #0
sta.b tcc__r3
ldx #1
lda.b tcc__r2
sec
sbc.b tcc__r3
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_86
+
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
__local_86:
brl __local_87
+
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -148 + ____tccs_number_locals + 1,s
stz.b tcc__r0h
tsa
clc
adc #(-68 + ____tccs_number_locals + 1)
clc
adc.b tcc__r1
sta.b tcc__r0
lda.w #48
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
jmp.w __local_88
__local_87:
__local_91:
lda 11 + ____tccs_number_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
stz.b tcc__r1
lda.w #0
sta.b tcc__r3
ldx #1
lda.b tcc__r2
sec
sbc.b tcc__r3
tay
bne +
dex
+
stx.b tcc__r5
txa
beq +
brl __local_89
+
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_90
+
__local_89:
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
inc.b tcc__r0
lda.b tcc__r0
sta -148 + ____tccs_number_locals + 1,s
stz.b tcc__r0h
tsa
clc
adc #(-68 + ____tccs_number_locals + 1)
clc
adc.b tcc__r1
sta.b tcc__r0
sta -160 + ____tccs_number_locals + 1,s
lda.b tcc__r0h
sta -158 + ____tccs_number_locals + 1,s
lda 11 + ____tccs_number_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx.b tcc__r0
jsr.l tcc__udiv
txa
sta -162 + ____tccs_number_locals + 1,s
lda 11 + ____tccs_number_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
sta.b tcc__r2
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx.b tcc__r0
jsr.l tcc__udiv
lda.b tcc__r9
stz.b tcc__r1
sta 11 + ____tccs_number_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(11 + ____tccs_number_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
lda -72 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda -70 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda -162 + ____tccs_number_locals + 1,s
sta.b tcc__r1
clc
adc.b tcc__r0
sta.b tcc__r0
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda -160 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda -158 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
sep #$20
lda.b tcc__r1
sta.b [tcc__r0]
rep #$20
jmp.w __local_91
__local_90:
__local_88:
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 19 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_92
+
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta 19 + ____tccs_number_locals + 1,s
__local_92:
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 19 + ____tccs_number_locals + 1,s
sta.b tcc__r1
sec
lda.b tcc__r0
sbc.b tcc__r1
sta 17 + ____tccs_number_locals + 1,s
lda 21 + ____tccs_number_locals + 1,s
and.w #17
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_93
+
jmp.w __local_94
__local_93:
__local_97:
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
ldx #1
lda.b tcc__r1
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_95
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_96
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #32
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_96:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
jmp.w __local_97
__local_95:
__local_94:
lda.w #0
sep #$20
lda -2 + ____tccs_number_locals + 1,s
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_98
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_99
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda -2 + ____tccs_number_locals + 1,s
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_99:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
__local_98:
lda 21 + ____tccs_number_locals + 1,s
and.w #32
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_100
+
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #8
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_101
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_102
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #48
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_102:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
jmp.w __local_103
__local_101:
lda 15 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #16
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_104
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_105
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #48
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_105:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_106
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda -72 + ____tccs_number_locals + 1,s
sta.b tcc__r1
lda -70 + ____tccs_number_locals + 1,s
sta.b tcc__r1h
clc
lda.b tcc__r1
adc.w #33
sta.b tcc__r1
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r2
sep #$20
sta.b [tcc__r0]
rep #$20
__local_106:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
__local_104:
__local_103:
__local_100:
lda 21 + ____tccs_number_locals + 1,s
and.w #16
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_107
+
jmp.w __local_108
__local_107:
__local_111:
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
ldx #1
lda.b tcc__r1
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_109
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_110
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda -1 + ____tccs_number_locals + 1,s
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_110:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
jmp.w __local_111
__local_109:
__local_108:
__local_114:
lda 19 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 19 + ____tccs_number_locals + 1,s
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.b tcc__r1
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_112
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_113
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #48
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_113:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
jmp.w __local_114
__local_112:
__local_117:
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta -148 + ____tccs_number_locals + 1,s
ldx #1
lda.b tcc__r1
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_115
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_116
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
stz.b tcc__r1h
tsa
clc
adc #(-68 + ____tccs_number_locals + 1)
sta.b tcc__r1
lda -148 + ____tccs_number_locals + 1,s
sta.b tcc__r2
clc
adc.b tcc__r1
sta.b tcc__r1
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r2
sep #$20
sta.b [tcc__r0]
rep #$20
__local_116:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
jmp.w __local_117
__local_115:
__local_120:
lda 17 + ____tccs_number_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta 17 + ____tccs_number_locals + 1,s
ldx #1
lda.b tcc__r1
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_118
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 7 + ____tccs_number_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_119
+
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda.w #32
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_119:
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
lda 3 + ____tccs_number_locals + 1,s
inc a
sta.b tcc__r0
sta 3 + ____tccs_number_locals + 1,s
jmp.w __local_120
__local_118:
lda 3 + ____tccs_number_locals + 1,s
sta.b tcc__r0
lda 5 + ____tccs_number_locals + 1,s
sta.b tcc__r0h
__local_70:
__local_121:
.ifgr ____tccs_number_locals 0
tsa
clc
adc #____tccs_number_locals
tas
.endif
rtl
.ends

.section ".text_0xc" superfree

vsnprintf:
.ifgr __vsnprintf_locals 0
tsa
sec
sbc #__vsnprintf_locals
tas
.endif
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
lda.b tcc__r0h
sta -14 + __vsnprintf_locals + 1,s
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 7 + __vsnprintf_locals + 1,s
clc
adc.b tcc__r0
dec a
sta.b tcc__r0
sta -20 + __vsnprintf_locals + 1,s
lda.b tcc__r0h
sta -18 + __vsnprintf_locals + 1,s
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 3 + __vsnprintf_locals + 1,s
dec a
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
sec
sbc.b tcc__r0
tay
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_122
+
lda.w #65535
sta.b tcc__r0h
lda.w #65535
sta.b tcc__r0
sta -20 + __vsnprintf_locals + 1,s
lda.b tcc__r0h
sta -18 + __vsnprintf_locals + 1,s
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -18 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
sec
lda.b tcc__r0
sbc.b tcc__r1
inc a
sta.b tcc__r0
sta 7 + __vsnprintf_locals + 1,s
__local_122:
__local_125:
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_123
+
bra __local_124
__local_128:
__local_173:
__local_191:
__local_195:
__local_202:
__local_206:
__local_226:
__local_238:
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 9 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta 9 + __vsnprintf_locals + 1,s
jmp.w __local_125
__local_124:
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #37
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_126
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_127
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r2
sep #$20
sta.b [tcc__r0]
rep #$20
__local_127:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
jmp.w __local_128
__local_126:
stz.b tcc__r0
lda.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
__tccs_repeat:
__local_132:
__local_135:
__local_138:
__local_141:
__local_144:
lda 11 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
inc a
sta 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
bra __local_129
bra __local_130
__local_129:
ldx #1
lda.b tcc__r1
sec
sbc #45
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_131
+
__local_130:
lda -30 + __vsnprintf_locals + 1,s
ora.w #16
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
jmp.w __local_132
bra __local_133
__local_131:
ldx #1
lda.b tcc__r1
sec
sbc #43
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_134
+
__local_133:
lda -30 + __vsnprintf_locals + 1,s
ora.w #4
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
jmp.w __local_135
bra __local_136
__local_134:
ldx #1
lda.b tcc__r1
sec
sbc #32
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_137
+
__local_136:
lda -30 + __vsnprintf_locals + 1,s
ora.w #8
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
jmp.w __local_138
bra __local_139
__local_137:
ldx #1
lda.b tcc__r1
sec
sbc #35
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_140
+
__local_139:
lda -30 + __vsnprintf_locals + 1,s
ora.w #32
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
jmp.w __local_141
bra __local_142
__local_140:
ldx #1
lda.b tcc__r1
sec
sbc #48
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_143
+
__local_142:
lda -30 + __vsnprintf_locals + 1,s
ora.w #1
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
jmp.w __local_144
__local_143:
lda.w #65535
sta -32 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_145
+
stz.b tcc__r0h
tsa
clc
adc #(9 + __vsnprintf_locals + 1)
pei (tcc__r0h)
pha
jsr.l __tccs_skip_atoi
tsa
clc
adc #4
tas
lda.b tcc__r0
sta -32 + __vsnprintf_locals + 1,s
jmp.w __local_146
__local_145:
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #42
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_147
+
lda 11 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
inc a
sta 9 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
sta -32 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #0
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_148
+
stz.b tcc__r0
lda -32 + __vsnprintf_locals + 1,s
sta.b tcc__r1
sec
lda.b tcc__r0
sbc.b tcc__r1
sta -32 + __vsnprintf_locals + 1,s
lda -30 + __vsnprintf_locals + 1,s
ora.w #16
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
__local_148:
__local_147:
__local_146:
lda.w #65535
sta -34 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #46
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_149
+
lda 11 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
inc a
sta 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_150
+
stz.b tcc__r0h
tsa
clc
adc #(9 + __vsnprintf_locals + 1)
pei (tcc__r0h)
pha
jsr.l __tccs_skip_atoi
tsa
clc
adc #4
tas
lda.b tcc__r0
sta -34 + __vsnprintf_locals + 1,s
jmp.w __local_151
__local_150:
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #42
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_152
+
lda 11 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
inc a
sta 9 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
sta -34 + __vsnprintf_locals + 1,s
__local_152:
__local_151:
lda -34 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #0
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_153
+
stz.b tcc__r0
lda.b tcc__r0
sta -34 + __vsnprintf_locals + 1,s
__local_153:
__local_149:
lda.w #65535
sta -36 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #104
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
brl __local_154
+
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_154:
brl __local_155
+
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #76
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_155:
brl __local_156
+
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #90
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_156:
brl __local_157
+
jmp.w __local_158
__local_157:
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
sta -36 + __vsnprintf_locals + 1,s
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 9 + __vsnprintf_locals + 1,s
inc a
sta 9 + __vsnprintf_locals + 1,s
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_159
+
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
__local_159:
brl __local_160
+
lda.w #76
sta.b tcc__r0
sta -36 + __vsnprintf_locals + 1,s
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 9 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta 9 + __vsnprintf_locals + 1,s
__local_160:
__local_158:
lda.w #10
sta -12 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
bra __local_161
bra __local_162
__local_161:
ldx #1
lda.b tcc__r1
sec
sbc #99
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_163
+
__local_162:
lda -30 + __vsnprintf_locals + 1,s
and.w #16
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_164
+
jmp.w __local_165
__local_164:
__local_168:
lda -32 + __vsnprintf_locals + 1,s
dec a
sta.b tcc__r0
sta -32 + __vsnprintf_locals + 1,s
ldx #1
lda.b tcc__r0
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_166
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_167
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #32
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_167:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
jmp.w __local_168
__local_166:
__local_165:
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
and.w #255
xba
and #$ff00
sta.b tcc__r1
ldy.w #8
-
cmp #$8000
ror a
dey
bne -
+
sep #$20
sta -21 + __vsnprintf_locals + 1,s
rep #$20
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_169
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda -21 + __vsnprintf_locals + 1,s
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_169:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
__local_172:
lda -32 + __vsnprintf_locals + 1,s
dec a
sta.b tcc__r0
sta -32 + __vsnprintf_locals + 1,s
ldx #1
lda.b tcc__r0
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_170
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_171
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #32
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_171:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
jmp.w __local_172
__local_170:
jmp.w __local_173
bra __local_174
__local_163:
ldx #1
lda.b tcc__r1
sec
sbc #115
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_175
+
__local_174:
lda 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -28 + __vsnprintf_locals + 1,s
lda.b tcc__r1h
sta -26 + __vsnprintf_locals + 1,s
lda -28 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -26 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_176
+
bra __local_177
__local_176:
lda.w #:__tccs_L.2
sta.b tcc__r0h
lda.w #__tccs_L.2 + 0
sta.b tcc__r0
sta -28 + __vsnprintf_locals + 1,s
lda.b tcc__r0h
sta -26 + __vsnprintf_locals + 1,s
__local_177:
lda -28 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -26 + __vsnprintf_locals + 1,s
pha
pei (tcc__r0)
jsr.l strlen
tsa
clc
adc #4
tas
lda.b tcc__r0
sta -2 + __vsnprintf_locals + 1,s
lda -30 + __vsnprintf_locals + 1,s
and.w #16
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_178
+
jmp.w __local_179
__local_178:
__local_182:
lda -32 + __vsnprintf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta -32 + __vsnprintf_locals + 1,s
lda -2 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.b tcc__r1
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_180
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_181
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #32
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_181:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
jmp.w __local_182
__local_180:
__local_179:
stz.b tcc__r0
lda.b tcc__r0
sta -10 + __vsnprintf_locals + 1,s
__local_185:
lda -10 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_183
+
bra __local_184
__local_187:
lda -10 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -10 + __vsnprintf_locals + 1,s
bra __local_185
__local_184:
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_186
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -28 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda -26 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r2
sep #$20
sta.b [tcc__r0]
rep #$20
__local_186:
lda -14 + __vsnprintf_locals + 1,s
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
lda -26 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -28 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -28 + __vsnprintf_locals + 1,s
jmp.w __local_187
__local_183:
__local_190:
lda -32 + __vsnprintf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta -32 + __vsnprintf_locals + 1,s
lda -2 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.b tcc__r1
tay
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_188
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_189
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #32
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_189:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
jmp.w __local_190
__local_188:
jmp.w __local_191
bra __local_192
__local_175:
ldx #1
lda.b tcc__r1
sec
sbc #112
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_193
+
__local_192:
lda -32 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #-1
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_194
+
lda.w #8
sta -32 + __vsnprintf_locals + 1,s
lda -30 + __vsnprintf_locals + 1,s
ora.w #1
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
__local_194:
lda 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
stz.b tcc__r0
lda -30 + __vsnprintf_locals + 1,s
pha
lda -32 + __vsnprintf_locals + 1,s
pha
lda -28 + __vsnprintf_locals + 1,s
pha
pea.w 16
pei (tcc__r0)
pei (tcc__r1)
lda -8 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -6 + __vsnprintf_locals + 1,s
pha
pei (tcc__r0)
lda 0 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 2 + __vsnprintf_locals + 1,s
pha
pei (tcc__r0)
jsr.l __tccs_number
tsa
clc
adc #20
tas
lda.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
lda.b tcc__r0h
sta -14 + __vsnprintf_locals + 1,s
jmp.w __local_195
bra __local_196
__local_193:
ldx #1
lda.b tcc__r1
sec
sbc #110
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_197
+
__local_196:
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_198
+
lda 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -40 + __vsnprintf_locals + 1,s
lda.b tcc__r1h
sta -38 + __vsnprintf_locals + 1,s
lda -40 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -38 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r2
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r2h
sec
lda.b tcc__r1
sbc.b tcc__r2
sta.b tcc__r1
sta.b [tcc__r0]
jmp.w __local_199
__local_198:
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #90
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_200
+
lda 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -44 + __vsnprintf_locals + 1,s
lda.b tcc__r1h
sta -42 + __vsnprintf_locals + 1,s
lda -44 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -42 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r2
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r2h
sec
lda.b tcc__r1
sbc.b tcc__r2
sta.b tcc__r1
sta.b [tcc__r0]
jmp.w __local_201
__local_200:
lda 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -48 + __vsnprintf_locals + 1,s
lda.b tcc__r1h
sta -46 + __vsnprintf_locals + 1,s
lda -48 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -46 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r2
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r2h
sec
lda.b tcc__r1
sbc.b tcc__r2
sta.b tcc__r1
sta.b [tcc__r0]
__local_201:
__local_199:
jmp.w __local_202
bra __local_203
__local_197:
ldx #1
lda.b tcc__r1
sec
sbc #37
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_204
+
__local_203:
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_205
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #37
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_205:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
jmp.w __local_206
bra __local_207
__local_204:
ldx #1
lda.b tcc__r1
sec
sbc #111
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_208
+
__local_207:
lda.w #8
sta.b tcc__r0
sta -12 + __vsnprintf_locals + 1,s
jmp.w __local_209
bra __local_210
__local_208:
ldx #1
lda.b tcc__r1
sec
sbc #88
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_211
+
__local_210:
lda -30 + __vsnprintf_locals + 1,s
ora.w #64
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
bra __local_212
__local_211:
ldx #1
lda.b tcc__r1
sec
sbc #120
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_213
+
__local_212:
lda.w #16
sta.b tcc__r0
sta -12 + __vsnprintf_locals + 1,s
jmp.w __local_214
bra __local_215
__local_213:
ldx #1
lda.b tcc__r1
sec
sbc #100
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_216
+
__local_215:
bra __local_217
__local_216:
ldx #1
lda.b tcc__r1
sec
sbc #105
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_218
+
__local_217:
lda -30 + __vsnprintf_locals + 1,s
ora.w #2
sta.b tcc__r0
sta -30 + __vsnprintf_locals + 1,s
bra __local_219
__local_218:
ldx #1
lda.b tcc__r1
sec
sbc #117
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_220
+
__local_219:
jmp.w __local_221
__local_220:
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_222
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #37
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_222:
lda -14 + __vsnprintf_locals + 1,s
lda -16 + __vsnprintf_locals + 1,s
inc a
sta -16 + __vsnprintf_locals + 1,s
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_223
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_224
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 9 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r2
sep #$20
sta.b [tcc__r0]
rep #$20
__local_224:
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda -16 + __vsnprintf_locals + 1,s
inc a
sta.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
bra __local_225
__local_223:
lda 11 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 9 + __vsnprintf_locals + 1,s
dec a
sta.b tcc__r0
sta 9 + __vsnprintf_locals + 1,s
__local_225:
jmp.w __local_226
__local_209:
__local_214:
__local_221:
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #76
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_227
+
lda 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 13 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
inc.b tcc__r0
inc.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r2
lda.b tcc__r1
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r0h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r0
lda.b tcc__r2
sta.b [tcc__r0]
jmp.w __local_228
__local_227:
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_229
+
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
stz.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r0
sta.b [tcc__r2]
lda -30 + __vsnprintf_locals + 1,s
and.w #2
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_230
+
lda -8 + __vsnprintf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
lda.b tcc__r1
ldy.w #15
-
cmp #$8000
ror a
dey
bne -
+
sta.b tcc__r1
lda.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
__local_230:
jmp.w __local_231
__local_229:
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #90
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_232
+
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
stz.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r0
sta.b [tcc__r2]
jmp.w __local_233
__local_232:
lda -36 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #104
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_234
+
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
stz.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r0
sta.b [tcc__r2]
lda -30 + __vsnprintf_locals + 1,s
and.w #2
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_235
+
lda -8 + __vsnprintf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
lda.b tcc__r1
ldy.w #15
-
cmp #$8000
ror a
dey
bne -
+
sta.b tcc__r1
lda.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
__local_235:
jmp.w __local_236
__local_234:
lda 15 + __vsnprintf_locals + 1,s
lda 13 + __vsnprintf_locals + 1,s
inc a
inc a
sta.b tcc__r0
sta 13 + __vsnprintf_locals + 1,s
lda 15 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 13 + __vsnprintf_locals + 1,s
dec a
dec a
sta.b tcc__r0
lda.b [tcc__r0]
sta.b tcc__r1
stz.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r0
sta.b [tcc__r2]
lda -30 + __vsnprintf_locals + 1,s
and.w #2
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_237
+
lda -8 + __vsnprintf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
lda.b tcc__r1
ldy.w #15
-
cmp #$8000
ror a
dey
bne -
+
sta.b tcc__r1
lda.b tcc__r0
sta -8 + __vsnprintf_locals + 1,s
stz.b tcc__r2h
tsa
clc
adc #(-8 + __vsnprintf_locals + 1) + 2
sta.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
__local_237:
__local_236:
__local_233:
__local_231:
__local_228:
lda -30 + __vsnprintf_locals + 1,s
pha
lda -32 + __vsnprintf_locals + 1,s
pha
lda -28 + __vsnprintf_locals + 1,s
pha
lda -6 + __vsnprintf_locals + 1,s
pha
lda 0 + __vsnprintf_locals + 1,s
sta.b tcc__r0
stz.b tcc__r1h
tsa
clc
adc #(0 + __vsnprintf_locals + 1) + 2
sta.b tcc__r1
lda.b [tcc__r1]
pha
pei (tcc__r0)
lda -8 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -6 + __vsnprintf_locals + 1,s
pha
pei (tcc__r0)
lda 0 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda 2 + __vsnprintf_locals + 1,s
pha
pei (tcc__r0)
jsr.l __tccs_number
tsa
clc
adc #20
tas
lda.b tcc__r0
sta -16 + __vsnprintf_locals + 1,s
lda.b tcc__r0h
sta -14 + __vsnprintf_locals + 1,s
jmp.w __local_238
__local_123:
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
beq ++
bcc ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_239
+
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
bra __local_240
__local_239:
lda 7 + __vsnprintf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #0
tay
beq +
bcs ++
+ dex
++
stx.b tcc__r5
txa
bne +
brl __local_241
+
lda -20 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -18 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sta.b tcc__r1
sep #$20
sta.b [tcc__r0]
rep #$20
__local_241:
__local_240:
lda -16 + __vsnprintf_locals + 1,s
sta.b tcc__r0
lda -14 + __vsnprintf_locals + 1,s
sta.b tcc__r0h
lda 3 + __vsnprintf_locals + 1,s
sta.b tcc__r1
lda 5 + __vsnprintf_locals + 1,s
sta.b tcc__r1h
sec
lda.b tcc__r0
sbc.b tcc__r1
sta.b tcc__r0
__local_242:
.ifgr __vsnprintf_locals 0
tsa
clc
adc #__vsnprintf_locals
tas
.endif
rtl
.ends

.section ".text_0xd" superfree

snprintf:
.ifgr __snprintf_locals 0
tsa
sec
sbc #__snprintf_locals
tas
.endif
stz.b tcc__r0h
tsa
clc
adc #(9 + __snprintf_locals + 1)
clc
adc.w #4
sta.b tcc__r0
sta -4 + __snprintf_locals + 1,s
lda.b tcc__r0h
sta -2 + __snprintf_locals + 1,s
lda -4 + __snprintf_locals + 1,s
sta.b tcc__r0
lda -2 + __snprintf_locals + 1,s
pha
pei (tcc__r0)
lda 13 + __snprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __snprintf_locals + 1,s
pha
pei (tcc__r0)
lda 15 + __snprintf_locals + 1,s
pha
lda 13 + __snprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __snprintf_locals + 1,s
pha
pei (tcc__r0)
jsr.l vsnprintf
tsa
clc
adc #14
tas
lda.b tcc__r0
sta -6 + __snprintf_locals + 1,s
sta.b tcc__r0
__local_243:
.ifgr __snprintf_locals 0
tsa
clc
adc #__snprintf_locals
tas
.endif
rtl
.ends

.section ".text_0xe" superfree

vsprintf:
.ifgr __vsprintf_locals 0
tsa
sec
sbc #__vsprintf_locals
tas
.endif
lda 11 + __vsprintf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsprintf_locals + 1,s
pha
pei (tcc__r0)
lda 11 + __vsprintf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsprintf_locals + 1,s
pha
pei (tcc__r0)
pea.w 65535
lda 13 + __vsprintf_locals + 1,s
sta.b tcc__r0
lda 15 + __vsprintf_locals + 1,s
pha
pei (tcc__r0)
jsr.l vsnprintf
tsa
clc
adc #14
tas
__local_244:
.ifgr __vsprintf_locals 0
tsa
clc
adc #__vsprintf_locals
tas
.endif
rtl
.ends

.section ".text_0xf" superfree

sprintf:
.ifgr __sprintf_locals 0
tsa
sec
sbc #__sprintf_locals
tas
.endif
stz.b tcc__r0h
tsa
clc
adc #(7 + __sprintf_locals + 1)
clc
adc.w #4
sta.b tcc__r0
sta -4 + __sprintf_locals + 1,s
lda.b tcc__r0h
sta -2 + __sprintf_locals + 1,s
lda -4 + __sprintf_locals + 1,s
sta.b tcc__r0
lda -2 + __sprintf_locals + 1,s
pha
pei (tcc__r0)
lda 11 + __sprintf_locals + 1,s
sta.b tcc__r0
lda 13 + __sprintf_locals + 1,s
pha
pei (tcc__r0)
lda 11 + __sprintf_locals + 1,s
sta.b tcc__r0
lda 13 + __sprintf_locals + 1,s
pha
pei (tcc__r0)
jsr.l vsprintf
tsa
clc
adc #12
tas
lda.b tcc__r0
sta -6 + __sprintf_locals + 1,s
sta.b tcc__r0
__local_245:
.ifgr __sprintf_locals 0
tsa
clc
adc #__sprintf_locals
tas
.endif
rtl
.ends

.section ".text_0x10" superfree

vsscanf:
.ifgr __vsscanf_locals 0
tsa
sec
sbc #__vsscanf_locals
tas
.endif
lda 5 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda 3 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
stz.b tcc__r0
lda.b tcc__r0
sta -10 + __vsscanf_locals + 1,s
lda.w #65535
sta -16 + __vsscanf_locals + 1,s
stz.b tcc__r0
lda.b tcc__r0
sta -18 + __vsscanf_locals + 1,s
__local_257:
__local_270:
__local_288:
__local_299:
__local_302:
__local_322:
__local_355:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_246
+
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
__local_246:
brl __local_247
+
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_248
+
__local_250:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_249
+
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda 7 + __vsscanf_locals + 1,s
inc a
sta.b tcc__r0
sta 7 + __vsscanf_locals + 1,s
bra __local_250
__local_249:
__local_252:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_251
+
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
inc a
sta.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
bra __local_252
__local_251:
__local_248:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #37
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_253
+
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
__local_253:
brl __local_254
+
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 7 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta 9 + __vsscanf_locals + 1,s
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r2
lda.b tcc__r0h
sta.b tcc__r2h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r0
lda.w #0
sep #$20
lda.b [tcc__r2]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
lda.b tcc__r0
sec
sbc.b tcc__r1
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_255
+
jmp.w __local_256
__local_255:
jmp.w __local_257
__local_254:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_258
+
bra __local_259
__local_258:
jmp.w __local_260
__local_259:
lda 9 + __vsscanf_locals + 1,s
lda 7 + __vsscanf_locals + 1,s
inc a
sta 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #42
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_261
+
__local_265:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_262
+
bra __local_263
__local_262:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
__local_263:
brl __local_264
+
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 7 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta 9 + __vsscanf_locals + 1,s
jmp.w __local_265
__local_264:
__local_269:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_266
+
bra __local_267
__local_266:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
__local_267:
brl __local_268
+
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
jmp.w __local_269
__local_268:
jmp.w __local_270
__local_261:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_271
+
stz.b tcc__r0h
tsa
clc
adc #(7 + __vsscanf_locals + 1)
pei (tcc__r0h)
pha
jsr.l __tccs_skip_atoi
tsa
clc
adc #4
tas
lda.b tcc__r0
sta -16 + __vsscanf_locals + 1,s
__local_271:
lda.w #65535
sta -12 + __vsscanf_locals + 1,s
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #104
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
brl __local_272
+
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_272:
brl __local_273
+
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #76
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_273:
brl __local_274
+
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
ldx #1
sec
sbc #90
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_274:
brl __local_275
+
bra __local_276
__local_275:
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta -12 + __vsscanf_locals + 1,s
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 7 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta 9 + __vsscanf_locals + 1,s
__local_276:
lda.w #10
sta -14 + __vsscanf_locals + 1,s
stz.b tcc__r0
lda.b tcc__r0
sta -18 + __vsscanf_locals + 1,s
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_277
+
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_278
+
__local_277:
bra __local_279
__local_278:
jmp.w __local_280
__local_279:
lda 9 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda 7 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta 7 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta 9 + __vsscanf_locals + 1,s
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r0
bra __local_281
bra __local_282
__local_281:
ldx #1
lda.b tcc__r0
sec
sbc #99
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_283
+
__local_282:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -24 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -22 + __vsscanf_locals + 1,s
lda -16 + __vsscanf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #-1
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_284
+
lda.w #1
sta.b tcc__r0
sta -16 + __vsscanf_locals + 1,s
__local_284:
__local_287:
lda -22 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -24 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -24 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -22 + __vsscanf_locals + 1,s
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r2
lda.b tcc__r0h
sta.b tcc__r2h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
lda.w #0
sep #$20
lda.b [tcc__r2]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
sta.b [tcc__r1]
rep #$20
lda -16 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta -16 + __vsscanf_locals + 1,s
ldx #1
lda.b tcc__r1
sec
sbc.w #0
tay
beq ++
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_285
+
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
__local_285:
brl __local_286
+
jmp.w __local_287
__local_286:
lda -10 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -10 + __vsscanf_locals + 1,s
jmp.w __local_288
bra __local_289
__local_283:
ldx #1
lda.b tcc__r0
sec
sbc #115
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_290
+
__local_289:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -28 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -26 + __vsscanf_locals + 1,s
lda -16 + __vsscanf_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #-1
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_291
+
lda.w #32767
sta.b tcc__r0
sta -16 + __vsscanf_locals + 1,s
__local_291:
__local_293:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_292
+
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
jmp.w __local_293
__local_292:
__local_298:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_294
+
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_295
+
bra __local_296
__local_295:
lda -16 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
dec.b tcc__r0
lda.b tcc__r0
sta -16 + __vsscanf_locals + 1,s
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
__local_294:
__local_296:
brl __local_297
+
lda -26 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -28 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -28 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -26 + __vsscanf_locals + 1,s
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r2
lda.b tcc__r0h
sta.b tcc__r2h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
lda.w #0
sep #$20
lda.b [tcc__r2]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r0
sep #$20
sta.b [tcc__r1]
rep #$20
jmp.w __local_298
__local_297:
lda -28 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -26 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
sta.b [tcc__r0]
rep #$20
lda -10 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -10 + __vsscanf_locals + 1,s
jmp.w __local_299
bra __local_300
__local_290:
ldx #1
lda.b tcc__r0
sec
sbc #110
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_301
+
__local_300:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -32 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -30 + __vsscanf_locals + 1,s
lda -32 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -30 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda 3 + __vsscanf_locals + 1,s
sta.b tcc__r2
lda 5 + __vsscanf_locals + 1,s
sta.b tcc__r2h
sec
lda.b tcc__r1
sbc.b tcc__r2
sta.b tcc__r1
sta.b [tcc__r0]
jmp.w __local_302
bra __local_303
__local_301:
ldx #1
lda.b tcc__r0
sec
sbc #111
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_304
+
__local_303:
lda.w #8
sta.b tcc__r0
sta -14 + __vsscanf_locals + 1,s
jmp.w __local_305
bra __local_306
__local_304:
ldx #1
lda.b tcc__r0
sec
sbc #120
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_307
+
__local_306:
bra __local_308
__local_307:
ldx #1
lda.b tcc__r0
sec
sbc #88
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_309
+
__local_308:
lda.w #16
sta.b tcc__r0
sta -14 + __vsscanf_locals + 1,s
jmp.w __local_310
bra __local_311
__local_309:
ldx #1
lda.b tcc__r0
sec
sbc #100
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_312
+
__local_311:
bra __local_313
__local_312:
ldx #1
lda.b tcc__r0
sec
sbc #105
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_314
+
__local_313:
lda.w #1
sta.b tcc__r0
sta -18 + __vsscanf_locals + 1,s
bra __local_315
__local_314:
ldx #1
lda.b tcc__r0
sec
sbc #117
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_316
+
__local_315:
jmp.w __local_317
bra __local_318
__local_316:
ldx #1
lda.b tcc__r0
sec
sbc #37
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_319
+
__local_318:
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
lda.w #0
sep #$20
lda.b [tcc__r1]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r0
ldx #1
sec
sbc #37
tay
bne +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_320
+
lda -10 + __vsscanf_locals + 1,s
sta.b tcc__r0
jmp.w __local_321
__local_320:
jmp.w __local_322
__local_319:
lda -10 + __vsscanf_locals + 1,s
sta.b tcc__r0
jmp.w __local_323
__local_305:
__local_310:
__local_317:
__local_325:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isspace
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_324
+
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
jmp.w __local_325
__local_324:
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sta.b tcc__r1
lda.b tcc__r1 ; DON'T OPTIMIZE
bne +
brl __local_326
+
lda -4 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.w #0
sep #$20
lda.b [tcc__r0]
rep #$20
xba
xba
bpl +
ora.w #$ff00
+
sep #$20
pha
rep #$20
jsr.l isdigit
tsa
clc
adc #1
tas
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_327
+
__local_326:
bra __local_328
__local_327:
jmp.w __local_329
__local_328:
lda -12 + __vsscanf_locals + 1,s
sta.b tcc__r0
bra __local_330
bra __local_331
__local_330:
ldx #1
lda.b tcc__r0
sec
sbc #104
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_332
+
__local_331:
lda -18 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_333
+
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -36 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -34 + __vsscanf_locals + 1,s
lda -36 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -34 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -30 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -28 + __vsscanf_locals + 1,s
jsr.l strtol
tsa
clc
adc #10
tas
lda -40 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -38 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
jmp.w __local_334
__local_333:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -44 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -42 + __vsscanf_locals + 1,s
lda -44 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -42 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -38 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -36 + __vsscanf_locals + 1,s
jsr.l strtoul
tsa
clc
adc #10
tas
lda -48 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -46 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
__local_334:
jmp.w __local_335
bra __local_336
__local_332:
ldx #1
lda.b tcc__r0
sec
sbc #108
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_337
+
__local_336:
lda -18 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_338
+
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -52 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -50 + __vsscanf_locals + 1,s
lda -52 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -50 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -46 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -44 + __vsscanf_locals + 1,s
jsr.l strtol
tsa
clc
adc #10
tas
lda -56 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -54 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
jmp.w __local_339
__local_338:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -60 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -58 + __vsscanf_locals + 1,s
lda -60 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -58 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -54 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -52 + __vsscanf_locals + 1,s
jsr.l strtoul
tsa
clc
adc #10
tas
lda -64 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -62 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
__local_339:
jmp.w __local_340
bra __local_341
__local_337:
ldx #1
lda.b tcc__r0
sec
sbc #76
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_342
+
__local_341:
lda -18 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_343
+
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -68 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -66 + __vsscanf_locals + 1,s
lda -68 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -66 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -62 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -60 + __vsscanf_locals + 1,s
jsr.l strtoll
tsa
clc
adc #10
tas
lda -72 + __vsscanf_locals + 1,s
sta.b tcc__r2
lda -70 + __vsscanf_locals + 1,s
sta.b tcc__r2h
lda.b tcc__r0
sta.b [tcc__r2]
inc.b tcc__r2
inc.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
jmp.w __local_344
__local_343:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -76 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -74 + __vsscanf_locals + 1,s
lda -76 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -74 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -70 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -68 + __vsscanf_locals + 1,s
jsr.l strtoull
tsa
clc
adc #10
tas
lda -80 + __vsscanf_locals + 1,s
sta.b tcc__r2
lda -78 + __vsscanf_locals + 1,s
sta.b tcc__r2h
lda.b tcc__r0
sta.b [tcc__r2]
inc.b tcc__r2
inc.b tcc__r2
lda.b tcc__r1
sta.b [tcc__r2]
__local_344:
jmp.w __local_345
bra __local_346
__local_342:
ldx #1
lda.b tcc__r0
sec
sbc #90
tay
beq +
dex
+
stx.b tcc__r5
txa
bne +
brl __local_347
+
__local_346:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -84 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -82 + __vsscanf_locals + 1,s
lda -84 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -82 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -78 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -76 + __vsscanf_locals + 1,s
jsr.l strtoul
tsa
clc
adc #10
tas
lda -88 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -86 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
jmp.w __local_348
__local_347:
lda -18 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_349
+
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -92 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -90 + __vsscanf_locals + 1,s
lda -92 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -90 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -86 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -84 + __vsscanf_locals + 1,s
jsr.l strtol
tsa
clc
adc #10
tas
lda -96 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -94 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
jmp.w __local_350
__local_349:
lda 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
clc
lda.b tcc__r0
adc.w #4
sta 11 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __vsscanf_locals + 1,s
sta.b tcc__r0h
sec
lda.b tcc__r0
sbc.w #4
sta.b tcc__r0
ldy #0
lda.b [tcc__r0],y
sta.b tcc__r1
iny
iny
lda.b [tcc__r0],y
sta.b tcc__r1h
lda.b tcc__r1
sta -100 + __vsscanf_locals + 1,s
lda.b tcc__r1h
sta -98 + __vsscanf_locals + 1,s
lda -100 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -98 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -14 + __vsscanf_locals + 1,s
sta.b tcc__r1
pha
stz.b tcc__r1h
tsa
clc
adc #(-6 + __vsscanf_locals + 1)
pei (tcc__r1h)
pha
lda 2 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda 4 + __vsscanf_locals + 1,s
pha
pei (tcc__r1)
lda.b tcc__r0
sta -94 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -92 + __vsscanf_locals + 1,s
jsr.l strtoul
tsa
clc
adc #10
tas
lda -104 + __vsscanf_locals + 1,s
sta.b tcc__r1
lda -102 + __vsscanf_locals + 1,s
sta.b tcc__r1h
lda.b tcc__r0
sta.b [tcc__r1]
__local_350:
__local_335:
__local_340:
__local_345:
__local_348:
__local_351:
lda -10 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta.b tcc__r1
lda.b tcc__r0h
sta.b tcc__r1h
inc.b tcc__r0
lda.b tcc__r0
sta -10 + __vsscanf_locals + 1,s
lda -8 + __vsscanf_locals + 1,s
sta.b tcc__r0
lda -6 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_352
+
bra __local_353
__local_352:
bra __local_354
__local_353:
lda -6 + __vsscanf_locals + 1,s
sta.b tcc__r0h
lda -8 + __vsscanf_locals + 1,s
sta.b tcc__r0
sta -4 + __vsscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __vsscanf_locals + 1,s
jmp.w __local_355
__local_247:
__local_256:
__local_260:
__local_280:
__local_329:
__local_354:
lda -10 + __vsscanf_locals + 1,s
sta.b tcc__r0
__local_321:
__local_323:
__local_356:
.ifgr __vsscanf_locals 0
tsa
clc
adc #__vsscanf_locals
tas
.endif
rtl
.ends

.section ".text_0x11" superfree

sscanf:
.ifgr __sscanf_locals 0
tsa
sec
sbc #__sscanf_locals
tas
.endif
stz.b tcc__r0h
tsa
clc
adc #(7 + __sscanf_locals + 1)
clc
adc.w #4
sta.b tcc__r0
sta -4 + __sscanf_locals + 1,s
lda.b tcc__r0h
sta -2 + __sscanf_locals + 1,s
lda -4 + __sscanf_locals + 1,s
sta.b tcc__r0
lda -2 + __sscanf_locals + 1,s
pha
pei (tcc__r0)
lda 11 + __sscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __sscanf_locals + 1,s
pha
pei (tcc__r0)
lda 11 + __sscanf_locals + 1,s
sta.b tcc__r0
lda 13 + __sscanf_locals + 1,s
pha
pei (tcc__r0)
jsr.l vsscanf
tsa
clc
adc #12
tas
lda.b tcc__r0
sta -6 + __sscanf_locals + 1,s
sta.b tcc__r0
__local_357:
.ifgr __sscanf_locals 0
tsa
clc
adc #__sscanf_locals
tas
.endif
rtl
.ends

.section ".text_0x12" superfree

isdigit:
.ifgr __isdigit_locals 0
tsa
sec
sbc #__isdigit_locals
tas
.endif
lda 3 + __isdigit_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #48
tay
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_358
+
lda 3 + __isdigit_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #57
tay
beq +++
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
__local_358:
brl __local_359
+
lda.w #1
sta.b tcc__r0
bra __local_360
bra __local_361
__local_359:
lda.w #0
sta.b tcc__r0
__local_361:
__local_360:
__local_362:
.ifgr __isdigit_locals 0
tsa
clc
adc #__isdigit_locals
tas
.endif
rtl
.ends

.section ".text_0x13" superfree

isxdigit:
.ifgr __isxdigit_locals 0
tsa
sec
sbc #__isxdigit_locals
tas
.endif
lda 3 + __isxdigit_locals + 1,s
pha
jsr.l isdigit
pla
lda.b tcc__r0 ; DON'T OPTIMIZE
beq +
brl __local_363
+
lda 3 + __isxdigit_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #97
tay
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_364
+
lda 3 + __isxdigit_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #102
tay
beq +++
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
__local_364:
brl __local_365
+
jmp.w __local_366
__local_365:
lda 3 + __isxdigit_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #65
tay
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_367
+
lda 3 + __isxdigit_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #70
tay
beq +++
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
__local_367:
brl __local_368
+
bra __local_369
__local_368:
bra __local_370
__local_363:
__local_366:
__local_369:
lda.w #1
sta.b tcc__r0
bra __local_371
bra __local_372
__local_370:
lda.w #0
sta.b tcc__r0
__local_372:
__local_371:
__local_373:
.ifgr __isxdigit_locals 0
tsa
clc
adc #__isxdigit_locals
tas
.endif
rtl
.ends

.section ".text_0x14" superfree

islower:
.ifgr __islower_locals 0
tsa
sec
sbc #__islower_locals
tas
.endif
lda 3 + __islower_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #97
tay
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_374
+
lda 3 + __islower_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #122
tay
beq +++
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
__local_374:
brl __local_375
+
lda.w #1
sta.b tcc__r0
bra __local_376
bra __local_377
__local_375:
lda.w #0
sta.b tcc__r0
__local_377:
__local_376:
__local_378:
.ifgr __islower_locals 0
tsa
clc
adc #__islower_locals
tas
.endif
rtl
.ends

.section ".text_0x15" superfree

toupper:
.ifgr __toupper_locals 0
tsa
sec
sbc #__toupper_locals
tas
.endif
lda 3 + __toupper_locals + 1,s
pha
jsr.l islower
pla
lda.b tcc__r0 ; DON'T OPTIMIZE
bne +
brl __local_379
+
lda 3 + __toupper_locals + 1,s
sec
sbc.w #32
sta.b tcc__r0
bra __local_380
bra __local_381
__local_379:
lda 3 + __toupper_locals + 1,s
sta.b tcc__r0
__local_381:
__local_380:
__local_382:
.ifgr __toupper_locals 0
tsa
clc
adc #__toupper_locals
tas
.endif
rtl
.ends

.section ".text_0x16" superfree

isspace:
.ifgr __isspace_locals 0
tsa
sec
sbc #__isspace_locals
tas
.endif
lda 3 + __isspace_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #9
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
brl __local_383
+
lda 3 + __isspace_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #10
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_383:
brl __local_384
+
lda 3 + __isspace_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #11
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_384:
brl __local_385
+
lda 3 + __isspace_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #12
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_385:
brl __local_386
+
lda 3 + __isspace_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc #13
tay
beq +
dex
+
stx.b tcc__r5
txa
beq +
__local_386:
brl __local_387
+
bra __local_388
__local_387:
lda.w #1
sta.b tcc__r0
bra __local_389
bra __local_390
__local_388:
lda.w #0
sta.b tcc__r0
__local_390:
__local_389:
__local_391:
.ifgr __isspace_locals 0
tsa
clc
adc #__isspace_locals
tas
.endif
rtl
.ends

.section ".text_0x17" superfree

isprint:
.ifgr __isprint_locals 0
tsa
sec
sbc #__isprint_locals
tas
.endif
lda 3 + __isprint_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #32
tay
bvc +
eor #$8000
+
bpl +++
++
dex
+++
stx.b tcc__r5
txa
bne +
brl __local_392
+
lda 3 + __isprint_locals + 1,s
sta.b tcc__r0
ldx #1
sec
sbc.w #126
tay
beq +++
bvc +
eor #$8000
+
bmi +++
++
dex
+++
stx.b tcc__r5
txa
bne +
__local_392:
brl __local_393
+
lda.w #1
sta.b tcc__r0
bra __local_394
bra __local_395
__local_393:
lda.w #0
sta.b tcc__r0
__local_395:
__local_394:
__local_396:
.ifgr __isprint_locals 0
tsa
clc
adc #__isprint_locals
tas
.endif
rtl
.ends

.section ".text_0x18" superfree

strdup:
.ifgr __strdup_locals 0
tsa
sec
sbc #__strdup_locals
tas
.endif
lda 3 + __strdup_locals + 1,s
sta.b tcc__r0
lda 5 + __strdup_locals + 1,s
pha
pei (tcc__r0)
jsr.l strlen
tsa
clc
adc #4
tas
inc.b tcc__r0
pei (tcc__r0)
jsr.l malloc
pla
lda.b tcc__r0
sta -4 + __strdup_locals + 1,s
lda.b tcc__r0h
sta -2 + __strdup_locals + 1,s
lda 3 + __strdup_locals + 1,s
sta.b tcc__r0
lda 5 + __strdup_locals + 1,s
pha
pei (tcc__r0)
lda 0 + __strdup_locals + 1,s
sta.b tcc__r0
lda 2 + __strdup_locals + 1,s
pha
pei (tcc__r0)
jsr.l strcpy
tsa
clc
adc #8
tas
lda -4 + __strdup_locals + 1,s
sta.b tcc__r0
lda -2 + __strdup_locals + 1,s
sta.b tcc__r0h
__local_397:
.ifgr __strdup_locals 0
tsa
clc
adc #__strdup_locals
tas
.endif
rtl
.ends
.ramsection "ram.data" bank $7f slot 3
__local_dummy.data dsb 1

.ends

.section ".data" superfree

__local_dummy.data: .db 0
.ends

.section ".rodata" superfree

__tccs_L.2: .db $3c,$4e,$55,$4c,$4c,$3e,$0
.ends

.ramsection ".bss" bank $7e slot 2
__tccs_msys dsb 8
.ends
