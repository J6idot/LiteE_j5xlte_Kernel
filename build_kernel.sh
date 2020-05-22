#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/j6idiot/ToolChains/gcc-linaro-7.1.1-2017.05-x86_64_arm-eabi/bin/arm-eabi-
export LOCALVERSION=-LiteE_j5xnlte_Kernel-1.0
mkdir output

make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_j5xlte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage