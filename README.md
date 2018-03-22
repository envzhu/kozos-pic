# KOZOS-PIC
※日本語は下の方にあります。  

## Overview
This is a Embeded OS for PIC32MX270F256B based on Japanese "[KOZOS](http://kozos.jp/kozos/)" which is developped for learning and hobby.  
This repositry consists of that bootloader and OS.
This OS is developped with full scratch programing.

### Bootloader
`KZLOAD`(kozos boot loader) loads firmware on RAM memory by `XMODEM` transfer and execute that.  
The loaded file must be hex file format.

### OS
`KOZOS` has functions like below.  
- Memory Management
- Thread Managemnt
	- Multi Task
	- Message Box
	
And has drivers like below.
- Serial Driver
- Timer Driver

## Demo
Displayed charactors on the led panel can be changed from PC by contacting with serial.  
I will upload this source code after several weeks.


## Requirement
- `mips-elf-gcc`  
It may be possible to use `XC32-compiler` and `pinguino-compiler`.I don't have checked yet.  
I installed with this command.  
```$ ../gcc-7.2.0/configure --prefix=(your install directry) --target=mips-elf --disable-nls --disable-threads --disable-shared --enable-languages=c --disable-bootstrap --disable-libssp```  
```$ make -j4```  
```$ make install```    

- `binutils`  
The original `mips-elf-objdump` has a bug which disable to convert elf files to other format files.  
Please use [this one](https://github.com/PinguinoIDE/pinguino-compilers) fixed the bug.  
You can find `p32-objdump` in pinguino-compilers/(Your OS version)/p32/bin/ directory.  
And rename to `mips-elf-gcc` or change Makefile.

  


## License
KOZOS-PIC is released under MIT license.

## Contact
If you are find something wrong with this OS or my English, please tell me because I am beginner at programing and English.Of course, I welcome your quetions,too.  
Twitter : @envzhu

## 開発中
　[ここ](https://github.com/envzhu/kozosbook-pic)で学習用組込みOS「[KOZOS](http://kozos.jp/kozos/)」をPIC(MIPS)に移植して、それを発展させたものです。
ターゲットはPIC32MX270F256Bを想定しています。

## ブレッドボード図
![ブレッドボード図](PIC32_kozos_breadbord.png)
※気が向いたら見やすいように書き直します
