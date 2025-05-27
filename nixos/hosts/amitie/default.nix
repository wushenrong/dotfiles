# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD
{pkgs}: {
  users.users.samgo = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["wheel" "networkmanager" "audio"];
    hashedPassword = "$y$j9T$/DAp0/.UdGPSVEP2v2hz.1$vH7lK.0eVYB3lPCFITwfh4Oz.4fflq9b4nXjkKhz7R6";
  };

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      UsePAM = false;
    };
  };

  hardware.graphics.extraPackages = with pkgs; [intel-vaapi-driver];

  system.stateVersion = "25.05";
}
