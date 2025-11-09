{
  description = "dwl - dwm for Wayland";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.default = import ./dwl.nix {
          inherit pkgs;
          settings = {
            environment = {
              XDG_CURRENT_DESKTOP = "wlroots";
              XDG_SESSION_TYPE = "wayland";
              XCURSOR_SIZE = "24";
              XCURSOR_THEME = "Posy_Cursor_Black";
            };

            autostart = [
              "foot --server"
              "swaybg -i /home/paul/.config/wallpaper.jpg"
              "dunst"
              "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
            ];

            input = {
              keyboard = {
                options = "compose:ralt";
                repeat_rate = 60;
                repeat_delay = 200;
              };
            };

            appearance = {
              fonts = [ "SauceCodePro Nerd Font Mono:size=12" ];

              colors = {
                unfocused = {
                  text = "#7c6f64";
                  background = "#202020";
                  border = "#282828";
                };
                
                focused = {
                  text = "#ebdbb2";
                  background = "#282828";
                  border = "#665b51";
                };
              };

            };

            windows = {
              swallow.enable = true;

              rules = [
              ];
            };

            bindings = {
              mod = "SUPER";

              keys = [
                { bind = "mod+t"; action = "spawn"; arg = "footclient"; }
                { bind = "mod+s"; action = "spawn"; arg = "dmenu-run"; }
                { bind = "mod+e"; action = "spawn"; arg = "pcmanfm"; }
                { bind = "mod+w"; action = "spawn"; arg = "dmenu-url"; }
                { bind = "mod+c"; action = "spawn"; arg = "dmenu-wifi"; }
                { bind = "mod+r"; action = "spawn"; arg = "dmenu-summa"; }
                { bind = "mod+d"; action = "spawn"; arg = "discord"; }
                { bind = "mod+m"; action = "spawn"; arg = "footclient mpcube"; }
                { bind = "mod+v"; action = "spawn"; arg = "footclient nvim"; }
                { bind = "mod+p"; action = "spawn"; arg = "dmenu-pass"; }
                { bind = "mod+shift+p"; action = "spawn"; arg = "dmenu-passotp"; }
                { bind = "mod+x"; action = "spawn"; arg = "dmenu-dev"; }
                
                { bind = "mod+shift+k"; action = "spawn"; arg = "playerctl play-pause"; }
                { bind = "mod+shift+j"; action = "spawn"; arg = "playerctl previous"; }
                { bind = "mod+shift+l"; action = "spawn"; arg = "playerctl next"; }

                { bind = "mod+j"; action = "focusstack"; arg = 1; }
                { bind = "mod+k"; action = "focusstack"; arg = -1; }

                { bind = "mod+h"; action = "setmfact"; arg = -0.05; }
                { bind = "mod+l"; action = "setmfact"; arg = 0.05; }
                
                { bind = "mod+return"; action = "zoom"; }
                { bind = "mod+q"; action = "killclient"; }
                { bind = "mod+shift+q"; action = "quit"; }

                { bind = "mod+space"; action = "togglefullscreen"; }
                { bind = "mod+shift+space"; action = "togglefloating"; }

                { bind = "mod+0"; action = "viewall"; }
                { bind = "mod+shift+0"; action = "tagall"; }

                { bind = "mod+comma"; action = "focusmon"; arg = "left"; }
                { bind = "mod+period"; action = "focusmon"; arg = "right"; }
                { bind = "mod+shift+comma"; action = "tagmon"; arg = "left"; }
                { bind = "mod+shift+period"; action = "tagmon"; arg = "right"; }

                { bind = "mod+1"; action = "view"; arg = 1; }
                { bind = "mod+2"; action = "view"; arg = 2; }
                { bind = "mod+3"; action = "view"; arg = 3; }
                { bind = "mod+4"; action = "view"; arg = 4; }
                { bind = "mod+5"; action = "view"; arg = 5; }
                { bind = "mod+6"; action = "view"; arg = 6; }
                { bind = "mod+7"; action = "view"; arg = 7; }
                { bind = "mod+8"; action = "view"; arg = 8; }
                { bind = "mod+9"; action = "view"; arg = 9; }

                { bind = "mod+shift+1"; action = "tag"; arg = 1; }
                { bind = "mod+shift+2"; action = "tag"; arg = 2; }
                { bind = "mod+shift+3"; action = "tag"; arg = 3; }
                { bind = "mod+shift+4"; action = "tag"; arg = 4; }
                { bind = "mod+shift+5"; action = "tag"; arg = 5; }
                { bind = "mod+shift+6"; action = "tag"; arg = 6; }
                { bind = "mod+shift+7"; action = "tag"; arg = 7; }
                { bind = "mod+shift+8"; action = "tag"; arg = 8; }
                { bind = "mod+shift+9"; action = "tag"; arg = 9; }
              ];

              mouse = [
                { bind = "left"; target = "layout_symbol"; action = "setlayout"; arg = "tile"; }

                { bind = "mod+left"; target = "client"; action = "moveresize"; arg = "move"; }
                { bind = "mod+middle"; target = "client"; action = "togglefloating"; }
                { bind = "mod+right"; target = "client"; action = "moveresize"; arg = "resize"; }

                { bind = "left"; target = "tagbar"; action = "view"; }
                { bind = "right"; target = "tagbar"; action = "toggleview"; }
                { bind = "mod+left"; target = "tagbar"; action = "tag"; }
                { bind = "mod+right"; target = "tagbar"; action = "toggletag"; }
              ];
            };
          };
        };
      }
    );
}
