TARGET		  	?= uart

CC 				:= $(CROSS_COMPILE)gcc
LD				:= $(CROSS_COMPILE)ld

SRCDIRS			:= src \
                   src/uart

SFILES			:= $(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.S))
CFILES			:= $(foreach dir, $(SRCDIRS), $(wildcard $(dir)/*.c))

SFILENDIR		:= $(notdir  $(SFILES))
CFILENDIR		:= $(notdir  $(CFILES))

SOBJS			:= $(patsubst %, obj/%, $(SFILENDIR:.S=.o))
COBJS			:= $(patsubst %, obj/%, $(CFILENDIR:.c=.o))
OBJS			:= $(SOBJS) $(COBJS)

$(TARGET).bin : $(OBJS)
	$(CC) -o $(TARGET).elf $^

$(SOBJS) : obj/%.o : %.S
	$(CC) -Wall -mfpu=neon-vfpv4 -nostdlib -fno-builtin -c -O2  $(INCLUDE) -o $@ $<

$(COBJS) : obj/%.o : %.c
	$(CC) -Wall -Wa,-mimplicit-it=thumb -mfpu=neon-vfpv4 -nostdlib -fno-builtin -c -O2  $(INCLUDE) -o $@ $<
