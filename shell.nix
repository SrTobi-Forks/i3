{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    meson
    ninja
    pkg-config
    gcc
    libiconv

    xorg.libxcb.dev xorg.xcbutilkeysyms
    libxkbcommon
    xorg.xorgserver
    xorg.xcbutil xorg.xcbutilwm xcbutilxrm libstartup_notification
    xcb-util-cursor
    libev yajl pcre2.dev
    cairo.dev
    pango.dev
    perlPackages.AnyEventI3 perlPackages.X11XCB perlPackages.IPCRun
    perlPackages.ExtUtilsPkgConfig perlPackages.InlineC
  ];
}