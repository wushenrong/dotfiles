#!/bin/bash
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

source /etc/os-release

packages=(
  bat
  bfs
  btop
  chafa
  exiftool
  eza
  fastfetch
  fd-find
  fzf
  git-delta
  glow
  hexyl
  hyperfine
  imagemagick
  jq
  lesspipe
  ripgrep
  shellcheck
  shfmt
  tokei
  vivid
  zoxide
)

substitute_package() {
  packages=("${packages[@]/$1/}")
  packages+=("$2")
}

case "$ID $ID_LIKE" in
*"debian"*)
  substitute_package exiftool libimage-exiftool-perl
  substitute_package lesspipe

  packages+=(
    autotools-dev
    autoconf
    build-essential
    clang-format
    clang-tidy
  )

  sudo apt update -y
  sudo apt upgrade -y
  ;;
*"arch"*)
  substitute_package exiftool perl-image-exiftool
  substitute_package fd-find fd

  packages+=(base-devel clang)

  sudo pacman -Syu --no-confirm
  sudo pacman -S --no-confirm --needed "${packages[@]}"
  ;;
*"fedora"*)
  substitute_package exiftool perl-Image-ExifTool
  substitute_package lesspipe
  substitute_package shellcheck ShellCheck
  substitute_package vivid

  packages+=(@c-development @development-tools clang-tools-extra)

  sudo dnf upgrade -y
  sudo dnf install -y "${packages[@]}"
  ;;
*)
  echo "Sorry your distribution is not supported."
  echo "Please create an issue or pull request to add your distribution."
  exit 1
  ;;
esac

mkdir -p "${XDG_CONFIG_HOME:-$HOME/.config}/vivid"
curl -fsSLo "${XDG_CONFIG_HOME:-$HOME/.config}/vivid/filetype.yml" \
  https://raw.githubusercontent.com/sharkdp/vivid/refs/heads/master/config/filetypes.yml

if ! command -v vivid >/dev/null; then
  curl -fsSL https://github.com/sharkdp/vivid/releases/download/v0.10.1/vivid-v0.10.1-x86_64-unknown-linux-gnu.tar.gz |
    tar -xz --strip-components=1 -C "$HOME/.local/bin" vivid-v0.10.1-x86_64-unknown-linux-gnu/vivid
fi

echo "${packages[@]}"
