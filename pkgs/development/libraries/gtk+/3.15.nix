{ stdenv, fetchurl, pkgconfig, glib, atk, pango, cairo, gdk_pixbuf }:

let
  version = "3.15.4";
in
  stdenv.mkDerivation rec {
    name = "gtk+-3.15.4";
    src = fetchurl {
      url = "https://download.gnome.org/sources/gtk+/3.15/${name}.tar.xz";
      sha256 = "00x1fjq8q0v1gmyvd0d04l5hdrj2r115fkkbwlam51f7li8m9pq3";
    };
    buildInputs = [ pkgconfig glib atk pango cairo gdk_pixbuf ];
  }
