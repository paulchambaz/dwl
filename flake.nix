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
      in {
        packages.default = import ./dwl.nix {
          inherit pkgs;
          settings = {};
        };
      }
    )
    // {
      homeManagerModules.default = {
        config,
        lib,
        pkgs,
        ...
      }: let
        cfg = config.wayland.windowManager.dwl;
      in {
        options.wayland.windowManager.dwl = {
          enable = lib.mkEnableOption "dwl window manager";
          
          settings = lib.mkOption {
            type = lib.types.attrs;
            default = {};
            description = "dwl configuration";
          };
          
          package = lib.mkOption {
            type = lib.types.package;
            default = import ./dwl.nix {
              inherit pkgs;
              settings = cfg.settings;
            };
            description = "dwl package to use";
          };
        };
        
        config = lib.mkIf cfg.enable {
          home.packages = [cfg.package];
          
          home.sessionVariables = cfg.settings.environment or {};
        };
      };
    };
}
