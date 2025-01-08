{ config, pkgs, inputs, system, ... }:
{
  imports = [
    ./modules/homebrew.nix
    ./modules/system.nix
    ./modules/packages.nix
  ];

  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = system;
  };

  # Basic nix-darwin configuration
  services.nix-daemon.enable = true;
  nix.settings.experimental-features = "nix-command flakes";
  programs.zsh.enable = true;

  system = {
    configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;
    stateVersion = 5;
  };
}
