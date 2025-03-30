#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

if command -v apt >/dev/null; then
  sudo apt update -y
  sudo apt upgrade -y
  sudo apt install -y bat chafa exiftool eza fastfetch fd-find fzf gh \
    git-delta glow ripgrep vivid zoxide zsh

  sudo apt install -y autotools-dev autoconf build-essential
elif command -v pacman >/dev/null; then
  sudo pacman -Syu --confirm
  sudo pacman -S --needed --confirm bat chafa exiftool eza fastfetch fd fzf github-cli \
    git-delta glow lesspipe ripgrep vivid zoxide zsh

  sudo pacman -S --needed --confirm base-devel
elif command -v dnf >/dev/null; then
  sudo dnf upgrade -y
  sudo dnf install -y bat chafa exiftool eza fastfetch fd-find fzf gh git-delta \
    glow ripgrep zoxide zsh

  sudo dnf group install -y c-development
fi
