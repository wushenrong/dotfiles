# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD
{pkgs, ...}: {
  # Import configurations for hardware and base packages
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
  ];

  ## nix
  nix = {
    settings.experimental-features = ["nix-command" "flakes"];
    optimise.automatic = true;
    optimise.dates = ["13:30"];
    gc.automatic = true;
    gc.dates = "weekly";
    gc.options = "--delete-older-than 30d";
  };
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = true;
  system.autoUpgrade.dates = "daily";

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking
  networking.networkmanager.enable = true;
  networking.nftables.enable = true;
  hardware.bluetooth.enable = true;

  # Locale
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.defaultCharset = "UTF-8";
  location.provider = "geoclue2";

  # Disable root account
  users.mutableUsers = false;
  users.users.root.hashedPassword = "!";
  security.sudo.execWheelOnly = true;
  security.polkit.enable = true;

  # Video
  hardware.graphics.enable = true;

  # Audio
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # CUPS
  services.printing.enable = true;
  services.printing.drivers = with pkgs; [epson-escpr];

  # mDNS
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    publish = {
      enable = true;
      addresses = true;
    };
  };
}
