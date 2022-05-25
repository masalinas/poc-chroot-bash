## Description
PoC chroot bash jail

## execute chroot script
```shell
./chroot-bash.sh
```

## execute chroor jail
```shell
sudo chroot jail /bin/bash
```

## create a new ubuntu focal (ubuntu 20.02) version
Install debootstrap to create a new Ubuntu File System
```shell
sudo apt install debootstrap
```

Install Ubuntu 20.04 file system inside jail folder
```shell
sudo debootstrap focal ./ubuntu-jail
```

Create a chrot jail inside Ubuntu 20.04 file system
```shell
sudo chroot ~/ubuntu-jail /bin/bash
```
