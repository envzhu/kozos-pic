OUTPUT_FORMAT("elf32-littlemips")
OUTPUT_ARCH("mips")
ENTRY(_start)

/*
 * Interrupt vector static definitions.
 */
PROVIDE(_vector_spacing = 0x00000001);
PROVIDE(_ebase_address = 0x9D000000);

/*
 * Endere�os absolutos.
 */
_RESET_ADDR              = 0x9FC00000;


MEMORY
{
  program_mem (rx)  : o = 0x9D001000, l = 0x3F000   /* flash program memory 256KB*/
  boot_mem(rx)      : o = 0x9FC00000, l = 0xBF0     /* special flash boot memory */
  vectors_mem(rx)   : o = 0x9D000000, l = 0x1000    /* interrupt vectors area */
  config_mem(rx)    : o = 0x9FC00BF0, l = 0x10      /* configuration bits */
  buffer(rwx)	      : o = 0xA0000000, l = 0x7000    /* 28KB */
  data_mem (wx)     : o = 0xA0007000, l = 0xC00     /* ram memory 32KB */
  bootstack(rw)	    : o = 0xA0007D00, l = 0x000000
  intrstack(rw)	    : o = 0xA0007D00, l = 0x000000  /* end of RAM */
  softvec(rw)	      : o = 0xA0007D00, l = 0x000300  /* top of RAM */
}


SECTIONS
{
  /*
   * PIC32 configuration bits.
   */
  .devcfg : { KEEP(*(.devcfg3))
              KEEP(*(.devcfg2))
              KEEP(*(.devcfg1))
              KEEP(*(.devcfg0)) } > config_mem

  .startup :
  {
    KEEP(*(.start))
  } > boot_mem

  /*
   * Interrupt vectors.
   * They are 64 small code segments in sequence.
   */
   .vector_soft_intr _ebase_address + 0x180 :
      { KEEP(*(.vector_soft_intr)) } > vectors_mem

        .vector_0 _ebase_address + 0x200 :
        { KEEP(*(.vector_0)) } > vectors_mem

        .vector_1 _ebase_address + 0x200 + (_vector_spacing << 5) * 1 :
         { KEEP(*(.vector_1)) } > vectors_mem

        .vector_2 _ebase_address + 0x200 + (_vector_spacing << 5) * 2 :
        { KEEP(*(.vector_2)) } > vectors_mem

        .vector_3 _ebase_address + 0x200 + (_vector_spacing << 5) * 3 :
        { KEEP(*(.vector_3)) } > vectors_mem

        .vector_4 _ebase_address + 0x200 + (_vector_spacing << 5) * 4 :
        { KEEP(*(.vector_4)) } > vectors_mem

        .vector_5 _ebase_address + 0x200 + (_vector_spacing << 5) * 5 :
        { KEEP(*(.vector_5)) } > vectors_mem

        .vector_6 _ebase_address + 0x200 + (_vector_spacing << 5) * 6 :
        { KEEP(*(.vector_6)) } > vectors_mem

        .vector_7 _ebase_address + 0x200 + (_vector_spacing << 5) * 7 :
        { KEEP(*(.vector_7)) } > vectors_mem

        .vector_8 _ebase_address + 0x200 + (_vector_spacing << 5) * 8 :
        { KEEP(*(.vector_8)) } > vectors_mem

        .vector_9 _ebase_address + 0x200 + (_vector_spacing << 5) * 9 :
        { KEEP(*(.vector_9)) } > vectors_mem

        .vector_10 _ebase_address + 0x200 + (_vector_spacing << 5) * 10 :
        { KEEP(*(.vector_10)) } > vectors_mem

        .vector_11 _ebase_address + 0x200 + (_vector_spacing << 5) * 11 :
        { KEEP(*(.vector_11)) } > vectors_mem

        .vector_12 _ebase_address + 0x200 + (_vector_spacing << 5) * 12 :
        { KEEP(*(.vector_12)) } > vectors_mem

        .vector_13 _ebase_address + 0x200 + (_vector_spacing << 5) * 13 :
        { KEEP(*(.vector_13)) } > vectors_mem

        .vector_14 _ebase_address + 0x200 + (_vector_spacing << 5) * 14 :
        { KEEP(*(.vector_14)) } > vectors_mem

        .vector_15 _ebase_address + 0x200 + (_vector_spacing << 5) * 15 :
        { KEEP(*(.vector_15)) } > vectors_mem

        .vector_16 _ebase_address + 0x200 + (_vector_spacing << 5) * 16 :
        { KEEP(*(.vector_16)) } > vectors_mem

        .vector_17 _ebase_address + 0x200 + (_vector_spacing << 5) * 17 :
        { KEEP(*(.vector_17)) } > vectors_mem

        .vector_18 _ebase_address + 0x200 + (_vector_spacing << 5) * 18 :
        { KEEP(*(.vector_18)) } > vectors_mem

        .vector_19 _ebase_address + 0x200 + (_vector_spacing << 5) * 19 :
        { KEEP(*(.vector_19)) } > vectors_mem

        .vector_20 _ebase_address + 0x200 + (_vector_spacing << 5) * 20 :
        { KEEP(*(.vector_20)) } > vectors_mem

        .vector_21 _ebase_address + 0x200 + (_vector_spacing << 5) * 21 :
        { KEEP(*(.vector_21)) } > vectors_mem

        .vector_22 _ebase_address + 0x200 + (_vector_spacing << 5) * 22 :
        { KEEP(*(.vector_22)) } > vectors_mem

        .vector_23 _ebase_address + 0x200 + (_vector_spacing << 5) * 23 :
        { KEEP(*(.vector_23)) } > vectors_mem

        .vector_24 _ebase_address + 0x200 + (_vector_spacing << 5) * 24 :
        { KEEP(*(.vector_24)) } > vectors_mem

        .vector_25 _ebase_address + 0x200 + (_vector_spacing << 5) * 25 :
        { KEEP(*(.vector_25)) } > vectors_mem

        .vector_26 _ebase_address + 0x200 + (_vector_spacing << 5) * 26 :
        { KEEP(*(.vector_26)) } > vectors_mem

        .vector_27 _ebase_address + 0x200 + (_vector_spacing << 5) * 27 :
        { KEEP(*(.vector_27)) } > vectors_mem

        .vector_28 _ebase_address + 0x200 + (_vector_spacing << 5) * 28 :
        { KEEP(*(.vector_28)) } > vectors_mem

        .vector_29 _ebase_address + 0x200 + (_vector_spacing << 5) * 29 :
        { KEEP(*(.vector_29)) } > vectors_mem

        .vector_30 _ebase_address + 0x200 + (_vector_spacing << 5) * 30 :
        { KEEP(*(.vector_30)) } > vectors_mem

        .vector_31 _ebase_address + 0x200 + (_vector_spacing << 5) * 31 :
        { KEEP(*(.vector_31)) } > vectors_mem

        .vector_32 _ebase_address + 0x200 + (_vector_spacing << 5) * 32 :
        { KEEP(*(.vector_32)) } > vectors_mem

        .vector_33 _ebase_address + 0x200 + (_vector_spacing << 5) * 33 :
        { KEEP(*(.vector_33)) } > vectors_mem

        .vector_34 _ebase_address + 0x200 + (_vector_spacing << 5) * 34 :
        { KEEP(*(.vector_34)) } > vectors_mem

        .vector_35 _ebase_address + 0x200 + (_vector_spacing << 5) * 35 :
        { KEEP(*(.vector_35)) } > vectors_mem

        .vector_36 _ebase_address + 0x200 + (_vector_spacing << 5) * 36 :
        { KEEP(*(.vector_36)) } > vectors_mem

        .vector_37 _ebase_address + 0x200 + (_vector_spacing << 5) * 37 :
        { KEEP(*(.vector_37)) } > vectors_mem

        .vector_38 _ebase_address + 0x200 + (_vector_spacing << 5) * 38 :
        { KEEP(*(.vector_38)) } > vectors_mem

        .vector_39 _ebase_address + 0x200 + (_vector_spacing << 5) * 39 :
        { KEEP(*(.vector_39)) } > vectors_mem

        .vector_40 _ebase_address + 0x200 + (_vector_spacing << 5) * 40 :
        { KEEP(*(.vector_40)) } > vectors_mem

        .vector_41 _ebase_address + 0x200 + (_vector_spacing << 5) * 41 :
        { KEEP(*(.vector_41)) } > vectors_mem

        .vector_42 _ebase_address + 0x200 + (_vector_spacing << 5) * 42 :
        { KEEP(*(.vector_42)) } > vectors_mem


  /*
   * Text segment: program code, to the Flash.
   */
  	.text : {
  		_text_start = . ;
  		*(.text)
  		_etext = . ;
  	} > program_mem
  /*
   * Constants: to the Flash.
   */

  .rodata : {
  _rodata_start = . ;
  *(.strings)
  *(.rodata)
  *(.rodata.*)
  _erodata = . ;
} > program_mem

  . = ALIGN(4) ;
  rodata_end = . ;

  /*
   * Initialized Data segments, from Flash to RAM.
   */
   .buffer : {
     buffer_start = . ;
   } > buffer
	.data : {
		_data_start = . ;
		*(.data)
    *(.sdata)
		_edata = . ;
	} > data_mem AT> program_mem

  _gp = ALIGN(16) + 0x7ff0;                           /* place gp next to data and small data */

  /*
   * Unitialized data segments, RAM only.
   */

	.bss : {
		_bss_start = . ;
		*(.bss)
    *(.sbss)
		*(COMMON)
		_ebss = . ;
	} > data_mem AT> program_mem


  /*
   * End of static data. To be used for dynamic data.
   */
  _end = .;



  .bootstack  : {
    _bootstack = . ;
  } > bootstack

  .intrstack  : {
    _intrstack = . ;
  } > intrstack


  .softvec : {
		softvec = .;
	} > softvec
}
