#!/bin/bash
DEFCONFIG=whyred-perf_defconfig
export ARCH=arm64
#export KBUILD_BUILD_USER="stylog"
#export KBUILD_BUILD_HOST="ci"

mkdir -p out
make O=out clean && make O=out mrproper
make O=out ARCH=arm64 $DEFCONFIG
make O=out savedefconfig
