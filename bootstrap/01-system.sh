#!/usr/bin/env bash
set -e

pkg update && pkg upgrade -y
termux-setup-storage
pkg install termux-api

uname

termux-battery-status

echo "Termux Version"
echo $TERMUX_VERSION

echo "Android Version"
getprop ro.build.version.release

ping -c 1 1.1.1.1
