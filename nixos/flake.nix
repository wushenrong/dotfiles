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
  outputs = inputs@{ self, nix-ld, nixpkgs, lix-module, ... }: {
    nixosConfigurations.amitie = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        nix-ld.nixosModules.nix-ld
        lix-module.nixosModules.default
        ./configuration.nix
        { programs.nix-ld.dev.enable = true; }
      ];
    };
  };
}

