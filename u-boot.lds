OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(_start)
SECTIONS
{
 . = 0x00000000;
 . = ALIGN(8);
 __image_copy_start = ADDR(.text);
 .text :
 {
  arch/arm/cpu/armv8/start.o (.text*)
 }
 .efi_runtime : {
                __efi_runtime_start = .;
  *(.text.efi_runtime*)
  *(.rodata.efi_runtime*)
  *(.data.efi_runtime*)
                __efi_runtime_stop = .;
 }
 .text_rest :
 {
  *(.text*)
 }
 . = ALIGN(8);
 .rodata : { *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*))) }
 . = ALIGN(8);
 .data : {
  *(.data*)
 }
 . = ALIGN(8);
 . = .;
 . = ALIGN(8);
 __u_boot_list : {
  KEEP(*(SORT(__u_boot_list*)));
 }
 .efi_runtime_rel : {
                __efi_runtime_rel_start = .;
  *(.rel*.efi_runtime)
  *(.rel*.efi_runtime.*)
                __efi_runtime_rel_stop = .;
 }
 . = ALIGN(8);
 __image_copy_end = .;
 .rela.dyn : {
  __rel_dyn_start = .;
  *(.rela*)
  __rel_dyn_end = .;
 }
 _end = .;
 .bss ALIGN(8) : {
  __bss_start = .;
  *(.bss*)
  . = ALIGN(8);
  __bss_end = .;
 }
 /DISCARD/ : { *(.dynsym) }
 /DISCARD/ : { *(.dynstr*) }
 /DISCARD/ : { *(.dynamic*) }
 /DISCARD/ : { *(.plt*) }
 /DISCARD/ : { *(.interp*) }
 /DISCARD/ : { *(.gnu*) }
}
