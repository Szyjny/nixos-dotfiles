{
  description = "Standalone Home‑Manager jako flake";

  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-25.05"; };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations = {
        "${builtins.getEnv "USER"}" = home-manager.lib.homeManagerConfiguration {
          inherit pkgs system;
          modules = [ ./home.nix ];
        };
      };
    };
}

