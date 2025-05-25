{ config, lib, pkgs, ... }:
{
  # System Packages
  programs = {
    bat.enable = true;
    ccache.enable = true;
    git.enable = true;
    less.enable = true;
    nano.enable = true;
    zoxide.enable = true;
    zsh.enable = true;
    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    gnupg = {
      agent.enable = true;
      dirmngr.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    bfs
    btop
    chafa
    chezmoi
    curl
    delta
    exiftool
    eza
    fastfetch
    fd
    fzf
    flow
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
  ];

  # Allow nonfree packages
  nixpkgs.config.allowUnfree = true;
}
