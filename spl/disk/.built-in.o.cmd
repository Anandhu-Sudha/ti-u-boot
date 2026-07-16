cmd_spl/disk/built-in.o :=  rm -f spl/disk/built-in.o; aarch64-none-linux-gnu-gcc-ar cDPrsT spl/disk/built-in.o spl/disk/part.o spl/disk/disk-uclass.o spl/disk/part_dos.o spl/disk/part_efi.o
