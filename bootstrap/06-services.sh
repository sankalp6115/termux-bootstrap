#!/usr/bin/env bash
set -e
echo "Starting services..."

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
