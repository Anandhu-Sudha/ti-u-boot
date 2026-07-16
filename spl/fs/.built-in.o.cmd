cmd_spl/fs/built-in.o :=  rm -f spl/fs/built-in.o; aarch64-none-linux-gnu-gcc-ar cDPrsT spl/fs/built-in.o spl/fs/fat/built-in.o spl/fs/fs_internal.o
