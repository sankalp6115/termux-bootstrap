#!/usr/bin/env bash
set -e
echo "Starting services..."

# Initialize termux-services for the current script session
if [ -f "$PREFIX/etc/profile.d/start-services.sh" ]; then
    source "$PREFIX/etc/profile.d/start-services.sh"
fi

# Ensure SVDIR is explicitly set
export SVDIR=$PREFIX/var/service

# Give the daemon a moment to start
sleep 1

sv-enable sshd
sv up sshd

if pgrep -x "sshd" >/dev/null; then
  echo "SSH ✓"
else
  echo "SSH ✗"
fi

sv-enable crond
sv up crond

echo "Health check complete."
