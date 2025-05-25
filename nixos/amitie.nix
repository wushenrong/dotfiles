{ config, lib, pkgs, ... }:
{
  # Hostname
  networking.hostName = "amitie";

  # Hardware
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [ intel-vaapi-driver ];
  };
}
