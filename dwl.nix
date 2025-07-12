{
  lib,
  stdenv,
  pkg-config,
  wayland-scanner,
  libinput,
  libxkbcommon,
  pixman,
  fcft,
  libdrm,
  wayland,
  wayland-protocols,
  wlroots_0_18,
  xorg,
  xwayland,
}:
{
  rootColor ? "0x222222ff",
}:
stdenv.mkDerivation {
  pname = "dwl";
  version = "0.7-local";
  src = ./.;

  nativeBuildInputs = [
    pkg-config
    wayland-scanner
  ];

  buildInputs = [
    libinput
    libxkbcommon
    fcft
    libdrm
    pixman
    wayland
    wayland-protocols
    wlroots_0_18
    xorg.libxcb
    xorg.libX11
    xorg.xcbutilwm
    xwayland
  ];

  postPatch = ''
    cp config.def.h config.h

    sed -i 's/static const float rootcolor\[\][[:space:]]*=[[:space:]]*COLOR([^)]*);/static const float rootcolor[] = COLOR(${rootColor});/' config.h
  '';

  makeFlags = [
    "PREFIX=$(out)"
  ];

  meta = with lib; {
    description = "dwm for Wayland";
    homepage = "https://codeberg.org/dwl/dwl";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
    maintainers = [ ];
  };
}
