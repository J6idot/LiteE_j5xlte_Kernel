#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/j6idot/LiteE_Kernels/arm-eabi-4.8/bin/arm-eabi-
export LOCALVERSION=-LiteE_J52016_Kernel-01052020
mkdir output

make -C $(pwd) O=output msm8916_sec_defconfig VARIANT_DEFCONFIG=msm8916_sec_j5xlte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
