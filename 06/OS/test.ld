OUTPUT_FORMAT("elf32-little")
OUTPUT_ARCH("mips")
ENTRY(_startup)

/*BMXDKPBA=0xC000 BMXDUDBA=0x10000 BMXDUPBA=0x10000*/
MEMORY
{
	ramall(rwx)	: o = 0xa0000000, l = 0x010000 /* 64KB */

	/* 16KB 0xA0008000~(0xA0000000+BMXDKPBA-1) */
 	data_ram(rwx)	: o =0xA0008000 , l = 0x4000

	 /* 16KB (0xA0000000+BMXDKPBA)~(0xA0000000+BMXDUDBA-1)*/
  program_ram(rwx)	: o = 0xA000C000, l = 0x04000

	stack(rw)	: o = 0xA000BFFF, l = 0x000000 /* end of data_ram */
}

SECTIONS
{
	.rodata : {
		_rodata_start = . ;
		*(.strings)
		*(.rodata)
		*(.rodata.*)
		_erodata = . ;
	} > data_ram

	.data : {
		_data_start = . ;
		*(.data)
		_edata = . ;
	} > data_ram

	.bss : {
		_bss_start = . ;
		*(.bss)
		*(COMMON)
		_ebss = . ;
	} > data_ram
	. = ALIGN(4);
	.stack : {
		_stack = .;
	} > stack

	.text : {
		_text_start = . ;
		*(.text)
		_etext = . ;
	} > program_ram


}
