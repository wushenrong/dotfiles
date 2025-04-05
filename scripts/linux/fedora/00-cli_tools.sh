#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Update Fedora
sudo dnf upgrade -y

sudo dnf install -y bat bfs eza fd-find fzf gh git-delta jq ripgrep tokei \
  zoxide
