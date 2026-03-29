#!/bin/sh

# Waydroid
ln -sf /dev/binderfs/* /dev/

# Video recording
setprop debug.stagefright.c2inputsurface -1

# This should prevent `echo 1 > /dev/ipa` to randomnly crash the kernel especially when turning on wifi
echo -n "/vendor/firmware" > /sys/module/firmware_class/parameters/path
