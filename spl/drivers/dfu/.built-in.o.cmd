cmd_spl/drivers/dfu/built-in.o :=  rm -f spl/drivers/dfu/built-in.o; aarch64-none-linux-gnu-gcc-ar cDPrsT spl/drivers/dfu/built-in.o spl/drivers/dfu/dfu.o spl/drivers/dfu/dfu_ram.o
