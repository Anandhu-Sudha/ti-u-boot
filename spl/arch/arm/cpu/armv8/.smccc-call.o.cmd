cmd_spl/arch/arm/cpu/armv8/smccc-call.o := aarch64-none-linux-gnu-gcc -Wp,-MD,spl/arch/arm/cpu/armv8/.smccc-call.o.d -nostdinc -isystem /opt/arm-toolchain/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu/bin/../lib/gcc/aarch64-none-linux-gnu/13.3.1/include -Ispl/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -D__ARM__ -mstrict-align -fno-common -ffixed-x18 -mgeneral-regs-only -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8 -I./arch/arm/mach-k3/include   -c -o spl/arch/arm/cpu/armv8/smccc-call.o arch/arm/cpu/armv8/smccc-call.S

source_spl/arch/arm/cpu/armv8/smccc-call.o := arch/arm/cpu/armv8/smccc-call.S

deps_spl/arch/arm/cpu/armv8/smccc-call.o := \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/arm64.h) \
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
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  include/linux/arm-smccc.h \
  spl/include/generated/asm-offsets.h \

spl/arch/arm/cpu/armv8/smccc-call.o: $(deps_spl/arch/arm/cpu/armv8/smccc-call.o)

$(deps_spl/arch/arm/cpu/armv8/smccc-call.o):
