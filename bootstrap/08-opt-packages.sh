#!/usr/bin/env bash

set -e
pkg install python3.11 -y

pkg install termux-api -y
pkg update && pkg upgrade -y