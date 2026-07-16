cmd_spl/u-boot-spl.lds := aarch64-none-linux-gnu-gcc -E -Wp,-MD,spl/.u-boot-spl.lds.d -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -D__ARM__          -mstrict-align -fno-common -ffixed-x18  -mgeneral-regs-only    -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8  -I./arch/arm/mach-k3/include -Ispl/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -nostdinc -isystem /opt/arm-toolchain/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/13.3.1/include -include ./include/u-boot/u-boot.lds.h -include ./include/config.h -DCPUDIR=arch/arm/cpu/armv8  -DIMAGE_MAX_SIZE=0x58000 -DIMAGE_TEXT_BASE=0x82000000 -ansi -D__ASSEMBLY__ -x assembler-with-cpp -std=c99 -P -o spl/u-boot-spl.lds arch/arm/cpu/armv8/u-boot-spl.lds

source_spl/u-boot-spl.lds := arch/arm/cpu/armv8/u-boot-spl.lds

deps_spl/u-boot-spl.lds := \
    $(wildcard include/config/spl/separate/bss.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/spl/recover/data/section.h) \
    $(wildcard include/config/linux/kernel/image/header.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/spl/option.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/spl/int/option.h) \
  include/u-boot/u-boot.lds.h \
  include/config.h \
  include/configs/am62l_stamp_1gb.h \
  include/configs/ti_armv7_common.h \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/nor/boot.h) \
    $(wildcard include/config/qspi/boot.h) \
    $(wildcard include/config/am43xx.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/mtd/raw/nand.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/usb.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \

spl/u-boot-spl.lds: $(deps_spl/u-boot-spl.lds)

$(deps_spl/u-boot-spl.lds):
