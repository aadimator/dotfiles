{
  description = "Pak nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";

    # # Homebrew taps
    # homebrew-core.url = "github:homebrew/homebrew-core";
    # homebrew-core.flake = false;

    # homebrew-cask.url = "github:homebrew/homebrew-cask";
    # homebrew-cask.flake = false;

    # homebrew-bundle.url = "github:homebrew/homebrew-bundle";
    # homebrew-bundle.flake = false;

    # homebrew-services.url = "github:homebrew/homebrew-services";
    # homebrew-services.flake = false;

    # felixkratz-formulae.url = "github:felixkratz/homebrew-formulae";
    # felixkratz-formulae.flake = false;
  };

  outputs = inputs @ { self, nixpkgs, nix-darwin, ... }:
    let
      system = "aarch64-darwin";
      specialArgs = { inherit inputs system; };
    in
    {
      darwinConfigurations."Aadams-MacBook-Pro" = nix-darwin.lib.darwinSystem {
        inherit system specialArgs;
        modules = [
          ./configuration.nix
          # inputs.nix-homebrew.darwinModules.nix-homebrew
        ];
      };
    };
}
