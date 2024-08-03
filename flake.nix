{
  description = "robbin's home-manager config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        keep-derivations = true;
        keep-outputs = true;
        inputs-fonts.acceptLicense = true;
      };
    };
  in {
    home-manager.useUserPackages = true;
    home-manager.useGlobalPkgs = true;
    homeConfigurations = {
      "robbin" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [./home.nix];
      };
    };
  };
}
