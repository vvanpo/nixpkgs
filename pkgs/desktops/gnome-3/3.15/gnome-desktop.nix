{ sources, stdenv, fetchurl, intltool, libX11, pkgconfig, gdk_pixbuf, gtk3, glib, gsettings-desktop-schemas, xkeyboard_config, isocodes, itstool, libxml2 }:

with sources;
stdenv.mkDerivation rec {
  name = "gnome-desktop-3.15.4";
  NIX_CFLAGS_COMPILE = "-I${glib}/include/gio-unix-2.0";
  src = fetchurl {
    url = "${sources}${name}.tar.xz";
    sha256 = "1632703bc9db116562c2f55560742f4709165e46e91e7f6b6d71e654ee6fc7e6";
  };
  buildInputs = [ intltool libX11 pkgconfig gdk_pixbuf gtk3 glib gsettings-desktop-schemas xkeyboard_config isocodes itstool libxml2 ];
}
