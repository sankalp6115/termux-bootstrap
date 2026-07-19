#!/usr/bin/env bash
set -e

echo "Setting up configurations..."

mkdir -p ~/.config

cp -r config/.zshrc ~/ 2>/dev/null || true
cp -r config/.bashrc ~/ 2>/dev/null || true
cp -r config/.tmux.conf ~/ 2>/dev/null || true
cp -r config/.gitconfig ~/ 2>/dev/null || true
cp -r config/.vimrc ~/ 2>/dev/null || true
cp -r config/.nanorc ~/ 2>/dev/null || true
cp -r config/sshd_config ~/ 2>/dev/null || true
cp -r config/aliases ~/ 2>/dev/null || true

cp -r config/motd $PREFIX/etc/ 2>/dev/null || true
cp -r config/ascii_art.txt $PREFIX/home/.ascii/ 2>/dev/null || true

cp assets/audio/login.mp3 ~/system_scripts
cp config/ssh_login.sh ~/system_scripts

echo "Changing default shell to zsh..."
chsh -s zsh
