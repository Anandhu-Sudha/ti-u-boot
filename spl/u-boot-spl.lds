MEMORY { .sram : ORIGIN = 0x82000000,
  LENGTH = 0x58000 }
MEMORY { .sdram : ORIGIN = 0x82c80000,
  LENGTH = 0x80000 }
OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(_start)
SECTIONS
{
 __image_copy_start = ADDR(.text);
 .text : {
  . = ALIGN(8);
  arch/arm/cpu/armv8/start.o (.text*)
  *(.text*)
 } >.sram
 .rodata : {
  . = ALIGN(8);
  *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
 } >.sram
 .data : {
  . = ALIGN(8);
  *(.data*)
 } >.sram
 __u_boot_list : {
  . = ALIGN(8);
  KEEP(*(SORT(__u_boot_list*)));
 } >.sram
 . = ALIGN(8);
 __image_copy_end = .;
 _end = .;
 _image_binary_end = .;
 .bss : {
  __bss_start = .;
  *(.bss*)
  . = ALIGN(8);
  __bss_end = .;
 } >.sdram
 __bss_size = __bss_end - __bss_start;
 /DISCARD/ : { *(.rela*) }
 /DISCARD/ : { *(.dynsym) }
 /DISCARD/ : { *(.dynstr*) }
 /DISCARD/ : { *(.dynamic*) }
 /DISCARD/ : { *(.plt*) }
 /DISCARD/ : { *(.interp*) }
 /DISCARD/ : { *(.gnu*) }
}
ASSERT(ADDR(.bss) % 8 == 0, ".bss must be 8-byte aligned");
