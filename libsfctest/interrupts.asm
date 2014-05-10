.include "hdr.asm"

.base $80
.section "libsfc_interrupt_assembly_code" superfree
waitForInterrupt:
	wai
	rtl ; function call overhead unavoidable for now.

setNMIHandler:
	lda 6,s
	sta.b tcc__r0h
	lda 4,s
	sta.b tcc__r0
	sta.w __nmi_handler
	lda.b tcc__r0h
	sta.w __nmi_handler + 2
	rtl

setIRQHandler:
	lda 6,s
	sta.b tcc__r0h
	lda 4,s
	sta.b tcc__r0
	sta.w __irq_handler
	lda.b tcc__r0h
	sta.w __irq_handler + 2
	rtl

bullshot:
	ora.w __irq_handler+$100,x
.ends
.base $00
