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

## Requirement
- mips-elf-gcc
- binutils

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
