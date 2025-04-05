#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Update Debian/Ubuntu
sudo apt update -y
sudo apt upgrade -y

# Install CLI tools
sudo apt install -y bat bfs eza fd-find fzf gh git-delta jq ripgrep tokei \
  vivid zoxide

