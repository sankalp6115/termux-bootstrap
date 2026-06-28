#!/usr/bin/env bash
set -e

pkg update && pkg upgrade -y

echo "Checking storage access..."

if [ -d "$HOME/storage" ]; then
    echo "Storage already configured."
else
    echo "Setting up storage..."
    termux-setup-storage

    echo
    echo "Please grant the storage permission."
    echo "Press Enter after granting permission..."
    read

    if [ -d "$HOME/storage" ]; then
        echo "Storage configured successfully."
    else
        echo "Storage setup failed."
        exit 1
    fi
fi

uname

echo "Termux Version"
echo $TERMUX_VERSION

echo "Android Version"
getprop ro.build.version.release

ping -c 1 1.1.1.1
