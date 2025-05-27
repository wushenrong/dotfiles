# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    # Use lix instead of nix
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.0.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Patch generic linux executables to run on NixOS
    nix-ld = {
      url = "github:Mic92/nix-ld";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  # Simple Shearable Config
  # From https://www.reddit.com/r/NixOS/comments/yk4n8d/comment/iurkkxv
  outputs = {
    nix-ld,
    nixpkgs,
    lix-module,
    ...
  } @ attrs: let
    commonModules = name: [
      nix-ld.nixosModules.nix-ld
      lix-module.nixosModules.default
      ./configuration.nix
      ./hosts/${name}
      {
        networking.hostName = name;
        programs.nix-ld.dev.enable = true;
      }
    ];
    mkSystem = name: cfg:
      nixpkgs.lib.nixosSystem {
        system = cfg.system or "x86_64-linux";
        modules = (commonModules name) ++ (cfg.modules or []);
        specialArgs = attrs;
      };
    systems = {
      amitie = {};
    };
  in {
    nixosConfigurations = nixpkgs.lib.mapAttrs mkSystem systems;
  };
}
