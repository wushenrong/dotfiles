#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

export BIN_DIR=$HOME/.local/bin

mkdir -p "$XDG_CONFIG_HOME/vivid"
curl -fsSLo "$XDG_CONFIG_HOME/vivid/filetype.yml" \
  https://raw.githubusercontent.com/sharkdp/vivid/refs/heads/master/config/filetypes.yml

if ! command -v vivid >/dev/null; then
  curl -fsSLO https://github.com/sharkdp/vivid/releases/download/v0.10.1/vivid-v0.10.1-x86_64-unknown-linux-gnu.tar.gz
  tar -xzf vivid-v0.10.1-x86_64-unknown-linux-gnu.tar.gz --strip-components=1 \
    -C "$HOME/.local/bin" vivid-v0.10.1-x86_64-unknown-linux-gnu/vivid

  rm -f vivid-v0.10.1-x86_64-unknown-linux-gnu.tar.gz
fi

if ! command -v navi >/dev/null; then
  bash <(curl -fsSL https://raw.githubusercontent.com/denisidoro/navi/master/scripts/install)
fi

if ! command -v act >/dev/null; then
  bash <(curl https://raw.githubusercontent.com/nektos/act/master/install.sh) \
    -b "$BIN_DIR"
fi

unset BIN_DIR
