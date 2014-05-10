#------------------------------------------------------------------------
#export DEVKITPRO	:=	/c/devkitPro
#export DEVKITSNES	:=	$(DEVKITPRO)/devkitSNES
export LIBSFC		:=	$(DEVKITPRO)/projects/SNES/libsfc
export PATH			:=	$(DEVKITSNES)/bin:$(PATH)
#------------------------------------------------------------------------
include $(DEVKITSNES)/snes_rules

CCFLAGS	:= -Wall 
ASFLAGS	:= -io
LDFLAGS	:= -dvSo
#cart	:= dsp1

#ifeq ($(cart),dsp1)
#CCFLAGS	+= -DUSING_DSP1=1
#endif

#------------------------------------------------------------------------
export BUILD	:=	build

TARGET		:=	$(shell basename $(CURDIR))
SOURCES		:=	. sprites
#libsfc
INCLUDES	:=	include 

export OUTPUT	:=	$(CURDIR)/$(TARGET).smc

export VPATH	:=	$(foreach dir,$(SOURCES),$(CURDIR)/$(dir))

export INCLUDE	:=	$(foreach dir,$(INCLUDES),-I$(CURDIR)/$(dir))

export CFILES	:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.c)))
export SFILES	:=	$(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.asm)))

export OFILES	:=	$(CFILES:.c=.obj) $(SFILES:.asm=.obj)

CCFLAGS += -I$(LIBSFC)/include -I$(DEVKITSNES)/include $(INCLUDE) 

#------------------------------------------------------------------------
.PHONY: all clean run gfx debug
#------------------------------------------------------------------------

all: $(BUILD)
	

run:
	$(SNES9X) $(OUTPUT)

clean:
	rm -rf $(OUTPUT) $(OFILES) main.s 
#$(BUILD)

debug:
	$(SNES9XDBG) $(OUTPUT)

test: $(CFILES:.c=.s)


$(BUILD): $(OUTPUT)
#@mkdir $@

%.smc: $(OFILES)
	$(LD) $(LDFLAGS) $(OFILES) $@

include $(CURDIR)/gfx/gfxmake.mk

