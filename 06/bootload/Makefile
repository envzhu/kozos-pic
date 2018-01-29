#PREFIX  = 
ARCH = mips-elf
#BINDIR  = $(PREFIX)/bin
ADDNAME = $(ARCH)-

AR      = $(ADDNAME)ar
AS      = $(ADDNAME)as
CC      = $(ADDNAME)gcc
LD      = $(ADDNAME)ld
NM      = $(ADDNAME)nm
OBJCOPY = $(ADDNAME)objcopy
OBJDUMP = $(ADDNAME)objdump
RANLIB  = $(ADDNAME)ranlib
STRIP   = $(ADDNAME)strip
BIN2HEX = $(ADDNAME)bin2hex

PIC32PROG = pic32prog


OBJS  = startup.o main.o hardware.o
OBJS += lib.o serial.o xmodem.o elf.o

TARGET = kzload

CFLAGS = -Wall -march=m4k -EL -nostdinc -nostdlib -fno-builtin
#CFLAGS += -mint32 # intを32ビットにすると掛算／割算ができなくなる
CFLAGS += -I.
CFLAGS += -G0
FLAGS += -Os
CFLAGS += -DKZLOAD

LFLAGS = -static -T ld.scr -L.

.SUFFIXES: .c .o
.SUFFIXES: .s .o

all :		$(TARGET)

$(TARGET) :	$(OBJS)
		$(CC) $(OBJS) -o $(TARGET) $(CFLAGS) $(LFLAGS)
		$(OBJCOPY) -O ihex $(TARGET) $(TARGET).hex
		$(STRIP) $(TARGET)


.c.o :		$<
		$(CC) -c $(CFLAGS) $<

.s.o :		$<
		$(CC) -c $(CFLAGS) $<


image :		$(TARGET).hex

write:	$(TARGET).hex
	$(PIC32PROG) $(TARGET).hex
	
obj_clean :
		rm -f $(OBJS)

clean :
		rm -f $(OBJS) $(TARGET) $(TARGET).elf $(TARGET).hex
