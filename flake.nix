{
  description = "dwl - dwm for Wayland";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        buildDwl = pkgs.callPackage ./dwl.nix {};
      in {
        lib.buildDwl = buildDwl;

        packages.default = buildDwl {
          rootColor = "0x000000ff";
        };

        apps.default = {
          type = "app";
          program = "${self.packages.${system}.default}/bin/dwl";
        };
      }
    );
}
