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
#forbag OBJCOPY = $(BINDIR)/$(ADDNAME)objcopy
OBJDUMP = $(BINDIR)/$(ADDNAME)objdump
RANLIB  = $(BINDIR)/$(ADDNAME)ranlib
STRIP   = $(BINDIR)/$(ADDNAME)strip
BIN2HEX = $(BINDIR)/$(ADDNAME)bin2hex




OBJS  = startup.o main.o lib.o serial.o interrupt.o

OBJS += kozos.o syscall.o test08_1.o

TARGET = kzload

CFLAGS = -Wall -march=m4k -EL -nostdinc -nostdlib -fno-builtin
#CFLAGS += -mint32 # intを32ビットにすると掛算／割算ができなくなる
CFLAGS += -I. -G0
#CFLAGS += -g
FLAGS += -Os
CFLAGS += -DKZLOAD

LFLAGS = -static -T test.ld -L.

.SUFFIXES: .c .o
.SUFFIXES: .S .o

all :		$(TARGET)

$(TARGET) :	$(OBJS)
		$(CC) $(OBJS) -o $(TARGET) $(CFLAGS) $(LFLAGS)
		#cp $(TARGET) $(TARGET).elf
		#$(OBJCOPY) -O ihex $(TARGET) $(TARGET).hex
		#$(STRIP) $(TARGET).hex
		#$(OBJCOPY) -I ihex -O elf32-little $(TARGET).hex $(TARGET)

.c.o :		$<
		$(CC) -c $(CFLAGS) $<

.S.o :		$<
		$(CC) -c $(CFLAGS) $<

$(TARGET).hex :	$(TARGET)
		$(BIN2HEX) $(TARGET)

image :		$(TARGET).hex

write:
	$(PIC32WRITE) $(TARGET).hex

clean :
		rm -f $(OBJS) $(TARGET) $(TARGET).hex
