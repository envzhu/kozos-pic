PREFIX  = /usr/local
ARCH = mips-elf
BINDIR  = $(PREFIX)/bin
ADDNAME = $(ARCH)-

AR      = $(BINDIR)/$(ADDNAME)ar
AS      = $(BINDIR)/$(ADDNAME)as
CC      = $(BINDIR)/$(ADDNAME)gcc
LD      = $(BINDIR)/$(ADDNAME)ld
NM      = $(BINDIR)/$(ADDNAME)nm
OBJCOPY = /opt/pinguino/p32/bin/p32-objcopy
#for bag OBJCOPY = $(BINDIR)/$(ADDNAME)objcopy
OBJDUMP = $(BINDIR)/$(ADDNAME)objdump
RANLIB  = $(BINDIR)/$(ADDNAME)ranlib
STRIP   = $(BINDIR)/$(ADDNAME)strip
BIN2HEX = $(BINDIR)/$(ADDNAME)bin2hex





OBJS  = startup.o main.o hardware.o intr.o interrupt.o
OBJS += lib.o serial.o xmodem.o elf.o

TARGET = kzload

CFLAGS = -Wall -march=m4k -EL -nostdinc -nostdlib -fno-builtin
#CFLAGS += -mint32 # intを32ビットにすると掛算／割算ができなくなる
CFLAGS += -I.
CFLAGS += -G0
CFLAGS += -Os
CFLAGS += -DKZLOAD

LFLAGS = -static -T test.ld -L.

.SUFFIXES: .c .o
.SUFFIXES: .s .o
.SUFFIXES: .S .o

all :		$(TARGET)

$(TARGET) :	$(OBJS)
		$(CC) $(OBJS) -o $(TARGET) $(CFLAGS) $(LFLAGS)
		$(OBJCOPY) -O ihex $(TARGET) $(TARGET).hex
		$(STRIP) $(TARGET).hex

.c.o :		$<
		$(CC) -c $(CFLAGS) $<

.s.o :		$<
		$(CC) -c $(CFLAGS) $<

.S.o :		$<
		$(CC) -c $(CFLAGS) $<

$(TARGET).hex	:	$(TARGET)

image :		$(TARGET).hex

write:		$(TARGET).hex
		./pic32prog $(TARGET).hex

clean :
		rm -f $(OBJS) $(TARGET) $(TARGET).elf $(TARGET).hex a.hex
obj-clean	:
		rm -f $(OBJS)
