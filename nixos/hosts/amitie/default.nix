# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD
{pkgs}: {
  users.users.samgo = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["wheel" "networkmanager" "audio"];
    hashedPassword = "INSERT_HASHED_PASSWORD_HERE";
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
