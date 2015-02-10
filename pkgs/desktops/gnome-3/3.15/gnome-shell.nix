{ sources, stdenv, fetchurl, intltool, pkgconfig, gobjectIntrospection, python3, libxml2, gtk3_15, at_spi2_atk, gjs, libsoup, clutter, libstartup_notification, libcanberra, libcanberra_gtk3, telepathy_glib, polkit }:

with sources;
stdenv.mkDerivation rec {
  name = "gnome-shell-3.15.4";
  src = fetchurl {
    url = "${sources}${name}.tar.xz";
    sha256 = "0664p49dx0m3a79b85aa0l1njn0rsp57hcq6pq1fd9y8ygkb07cs";
  };
  buildInputs = [ intltool pkgconfig gobjectIntrospection python3 libxml2 gtk3_15 at_spi2_atk gjs libsoup clutter libstartup_notification libcanberra libcanberra_gtk3 telepathy_glib polkit ];
}
