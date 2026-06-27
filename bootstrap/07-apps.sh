#!/usr/bin/env bash
set -e

echo "Starting app installations..."
echo "Please look at your device screen to accept the installation prompts."

# Check if the assets directory exists and contains APKs
if ls ./assets/*.apk 1> /dev/null 2>&1; then
    for apk in ./assets/*.apk; do
        basename_apk=$(basename "$apk")
        
        # Skip the main Termux app and Tailscale
        if [[ "$basename_apk" == "com.termux.apk" ]] || [[ "$basename_apk" == tailscale*.apk ]]; then
            echo "Skipping $basename_apk..."
            continue
        fi

        echo "Opening $basename_apk for installation..."
        termux-open "$apk"
        sleep 2
    done
else
    echo "No APKs found in the assets folder."
fi

echo "App installation prompts have been sent."
