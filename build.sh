#!/bin/bash
cd "$(dirname -- "$(readlink -fn -- "${0}")")"

clang -o makeheaders makeheaders.c -static -nostdinc -nostdlib -I/usr/local/musl/include/ -L/usr/local/musl/lib/ /usr/local/musl/lib/crt1.o /usr/local/musl/lib/crti.o /usr/local/musl/lib/crtn.o -lc -O3
