{ callPackage }:

{
  sources = "https://download.gnome.org/core/3.15/3.15.4/sources/";
  gnome-shell = callPackage ./gnome-shell.nix { };
  gsettings-desktop-schemas = callPackage ./gsettings-desktop-schemas.nix { };
  gnome-desktop = callPackage ./gnome-desktop.nix { };
  gjs = callPackage ./gjs.nix { };
}
