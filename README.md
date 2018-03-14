# KOZOS-PIC
※日本語は下の方にあります。  

## Overview
This is a Embeded OS for PIC32MX270F256B based on Japanese "[KOZOS](http://kozos.jp/kozos/)" which is developped for learning.  
This repositry consists of that bootloader and OS.

## Description
This OS is developped with full scratch programing.

#### Bootloader
This bootloader loads the program (OS) to RAM from PC with XMODEM transfer.  

## Demo
Displayed charactors on the led panel can be changed from PC by contacting with serial.  
I will upload this source code after several weeks.

## Requirement
If you don't arrange this OS,you need only writer software because you can use `./bootload/kzload.hex` and `./os/kzload.hex`.  

Otherwise, You need `mips-elf-gcc` and binutils.(But it may be possible to use `XC32-compiler` and `pinguino-compiler`.I don't have checked yet.)  

I installed with this command.  
```$ ../gcc-7.2.0/configure --prefix=(your install directry) --target=mips-elf --disable-nls --disable-threads --disable-shared --enable-languages=c --disable-bootstrap --disable-libssp```  
```$ make -j4```  
```$ make install```  

And the original `mips-elf-objdump` has a bug which disable to convert elf files to other format files.Please use [this one](https://github.com/PinguinoIDE/pinguino-compilers) fixed the bug.You can find `p32-objdump` in pinguino-compilers/(Your OS version)/p32/bin/ directory.And rename to `mips-elf-gcc` or change Makefile.

## Usage
At first you need to verify bootloader to PIC.Verify `./bootload/kzload.hex` to yours by using `pic32prog` or `MAPLAB IPE`.  
Next, load `./os/kozos.hex` to RAM of the target by XMODEM transfer.

## License
KOZOS-PIC is released under KL-01 license.(See KL-01 file)  
But the document is written in only Japanese.  
So I wil change to BSD license in recently feature. 

## Contact
If you are find something wrong with this OS or my English, please tell me because I am beginner at programing and English.Of course, I welcome your quetions,too.  
Twitter : @envzhu

## 開発中
　envzhuが学習用組込みOS「[KOZOS](http://kozos.jp/kozos/)」をPIC32(MIPS)に移植して、それを基に開発しているOSです。
ターゲットはPIC32MX270F256Bを想定しています。  
　書籍版「[12ステップで作る 組込みOS自作入門](https://www.amazon.co.jp/gp/product/4877832394/)」を移植したものは[osbook](https://github.com/envzhu/kozos-pic/tree/osbook)ブランチにあります
## ブレッドボード図
![ブレッドボード図](PIC32_kozos_breadbord.png)
※気が向いたら見やすいように書き直します