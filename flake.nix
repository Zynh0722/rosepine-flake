{
  description = "Rose Pine color scheme for NixOS and Home Manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
  };

  outputs =
    { ... }:
    {
      nixosModules.rosePine = import ./nix/nixos-module.nix;
      homeManagerModule.rosePine = import ./nix/home-manager-module.nix;
    };
}
