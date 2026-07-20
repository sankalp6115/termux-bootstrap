#!/usr/bin/env bash
cat ~/.ascii/ascii_art.txt
echo
echo
echo "Battery: $(termux-battery-status | jq -r '.percentage')%"