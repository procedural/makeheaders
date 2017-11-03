#!/bin/bash
cd "$(dirname -- "$(readlink -fn -- "${0}")")"

clang -o makeheaders makeheaders.c -static -nostdinc -nostdlib -I/usr/include/x86_64-linux-musl/ -L/usr/lib/x86_64-linux-musl/ /usr/lib/x86_64-linux-musl/crt1.o /usr/lib/x86_64-linux-musl/crti.o /usr/lib/x86_64-linux-musl/crtn.o -lc -Os && strip --strip-all makeheaders
