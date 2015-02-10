{ sources, stdenv, fetchurl, pkgconfig, gobjectIntrospection, intltool }:

with sources;
stdenv.mkDerivation rec {
  name = "gsettings-desktop-schemas-3.15.4";
  src = fetchurl {
    url = "${sources}${name}.tar.xz";
    sha256 = "0nqzh4zqlnl83d1rxp2ybr30a5nkrrnqjyn5aiacm3xky4v6jy39";
  };
  buildInputs = [ pkgconfig gobjectIntrospection intltool ];
}
