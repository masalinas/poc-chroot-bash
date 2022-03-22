#!/bin/sh

J=$HOME/git/poc-chroot-bash/jail

echo $J

# create jail folders
mkdir -p $J
mkdir -p $J/bin
mkdir -p $J/lib64
mkdir -p $J/lib
mkdir -p $J/lib/x86_64-linux-gnu

# set working folder
cd $J

# copy binaries
cp -v /bin/bash $J/bin
cp -v /bin/ls $J/bin

# watch binaries dependencies
#ldd /bin/bash
#ldd /bin/ls

# copy dependencies
cp -v /lib64/ld-linux-x86-64.so.2 $J/lib64/
cp -v /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/libc.so.6 $J/lib/x86_64-linux-gnu
cp -v /lib/x86_64-linux-gnu/libselinux.so.1 /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libpcre2-8.so.0 /lib/x86_64-linux-gnu/libdl.so.2 /lib64/ld-linux-x86-64.so.2 /lib/x86_64-linux-gnu/libpthread.so.0 jail/lib/x86_64-linux-gnu $J/lib/x86_64-linux-gnu
