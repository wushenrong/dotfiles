{ config, lib, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./base-packages.nix
    ./amitie.nix
  ];

  ## Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  ## Networking
  networking.networkmanager.enable = true;

  # Firewall
  networking.firewall.allowedUDPPorts = [ 5353 ];

  ## Timezone
  time.timeZone = "America/New_York";

  ## Locale
  i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  ## User Management
  # Disable root account
  users.mutableUsers = false;
  users.users.root.hashedPassword = "!";
  security.sudo.execWheelOnly = true;

  # Users
  users.users.samgo = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPassword = "INSERT_HASHED_PASSWORD_HERE";
  };

  ## Services
  # CUPS
  services.printing.enable = true;

  # Audio
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # mDNS
  services.avahi = {
    enable = true;
    nssmdns4 = true;
  };

  # OpenSSH
  services.openssh.enable = true;

  # Inital NixOS Config Version
  system.stateVersion = "25.05";
}
