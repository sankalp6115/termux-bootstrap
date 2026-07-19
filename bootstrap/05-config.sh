#!/usr/bin/env bash
set -e

echo "Setting up configurations..."

mkdir -p ~/.config

cp config/.zshrc ~/ 2>/dev/null || true
cp config/.bashrc ~/ 2>/dev/null || true
cp config/.tmux.conf ~/ 2>/dev/null || true
cp config/.gitconfig ~/ 2>/dev/null || true
cp config/.vimrc ~/ 2>/dev/null || true
cp config/.nanorc ~/ 2>/dev/null || true
cp config/aliases ~/ 2>/dev/null || true

cp config/sshd_config $PREFIX/etc/ssh/ 2>/dev/null || true
cp config/motd $PREFIX/etc/ 2>/dev/null || true
cp config/ascii_art.txt $PREFIX/home/.ascii/ 2>/dev/null || true

cp assets/audio/login.mp3 ~/system_scripts
cp config/ssh_login.sh ~/system_scripts

echo "Changing default shell to zsh..."
chsh -s zsh
