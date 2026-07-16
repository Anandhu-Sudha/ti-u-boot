cmd_spl/env/built-in.o :=  rm -f spl/env/built-in.o; aarch64-none-linux-gnu-gcc-ar cDPrsT spl/env/built-in.o spl/env/common.o spl/env/env.o spl/env/attr.o spl/env/flags.o spl/env/nowhere.o
