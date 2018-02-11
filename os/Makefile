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


OBJS  = startup.o main.o hardware.o interrupt.o
OBJS += lib.o serial.o

# sources of kozos
OBJS += kozos.o syscall.o memory.o consdrv.o command.o timer.o tmrdrv.o

TARGET = kozos

CFLAGS = -Wall -march=m4k -EL -nostdinc -nostdlib -fno-builtin
CFLAGS += -I. 
CFLAGS += -G0 #これをしないとエラーが出る
CFLAGS += -Os
CFLAGS += -DKOZOS -DDEBUG

LFLAGS = -static -T ld.scr -L.

.SUFFIXES: .c .o
.SUFFIXES: .s .o
.SUFFIXES: .S .o

all :		$(TARGET) $(TARGET).hex

$(TARGET) :	$(OBJS)
		$(CC) $(OBJS) -o $(TARGET) $(CFLAGS) $(LFLAGS)
		cp $(TARGET) $(TARGET).elf
		$(STRIP) $(TARGET)

.c.o :		$<
		$(CC) -c $(CFLAGS) $<

.s.o :		$<
		$(CC) -c $(CFLAGS) $<

.S.o :		$<
		$(CC) -c $(CFLAGS) $<

$(TARGET).hex :	$(TARGET)
		$(OBJCOPY) -O ihex $(TARGET) $(TARGET).hex

image :		$(TARGET).hex

obj_clean :
		rm -f $(OBJS)

clean :
		rm -f $(OBJS) $(TARGET) $(TARGET).elf $(TARGET).hex

line:
		wc -l *.c *.h *.s *.S ld.scr Makefile
