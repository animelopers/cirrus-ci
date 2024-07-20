#!/bin/bash
cd ~/rom

. build/envsetup.sh
export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export BUILD_USERNAME="alprjt"
export BUILD_HOSTNAME="cirrus-ci"
ccache -M 50G -F 0
ccache -o compression=true
ccache -z
$lunch
$make -j8 &
sleep 100m
kill %1
ccache -s

