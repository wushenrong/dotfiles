#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Update Arch
sudo pacman -Syu --noconfirm

sudo pacman -S --needed --noconfirm bat bfs eza fd fzf git-delta jq ripgrep \
  tokei vivid zoxide
