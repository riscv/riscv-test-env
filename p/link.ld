OUTPUT_ARCH( "riscv" )
ENTRY(_start)

PHDRS
{
	text PT_LOAD FLAGS(SHF_ALLOC | SHF_EXECINSTR);
}

SECTIONS
{
  . = 0x80000000;
  .text.init : { *(.text.init) } : text
  . = ALIGN(0x1000);
  .tohost : { *(.tohost) }
  . = ALIGN(0x1000);
  .text : { *(.text) } : text
  . = ALIGN(0x1000);
  .data : { *(.data) }
  .bss : { *(.bss) }
  _end = .;
}

