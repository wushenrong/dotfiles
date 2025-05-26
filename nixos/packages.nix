{ config, lib, pkgs, ... }:
{
  # System Specific Packages
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

  # Additional tools
  environment.systemPackages = with pkgs; [
    bfs
    btop
    chafa
    chezmoi
    curl
    delta
    elinks
    exiftool
    eza
    fastfetch
    fd
    file
    fzf
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
