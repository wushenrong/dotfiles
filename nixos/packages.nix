# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

{ config, lib, pkgs, ... }:
{
  # System Specific Packages
  programs = {
    bat.enable = true;
    ccache.enable = true;
    git.enable = true;
    less.enable = true;
    nano.enable = true;
    vim.enable = true;
    zoxide.enable = true;
    zsh.enable = true;
    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    gnupg = {
      agent.enable = true;
      dirmngr.enable = true;
    };
  };

  # Additional System Packages
  environment.systemPackages = with pkgs; [
    bfs
    btop
    chafa
    chezmoi
    curl
    delta
    duf
    elinks
    exiftool
    eza
    fastfetch
    fd
    file
    fzf
    gdu
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
    wget
  ];

  # Allow nonfree packages
  nixpkgs.config.allowUnfree = true;

  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [ cascadia-code ];
  };
}
