{ sources, stdenv, fetchurl, pkgconfig, gobjectIntrospection, spidermonkey_24 }:

with sources;
stdenv.mkDerivation rec {
  name = "gjs-1.43.3";
  src = fetchurl {
    url = "${sources}${name}.tar.xz";
    sha256 = "0khwm8l6m6x71rwf3q92d6scbhmrpiw7kqmj34nn588fb7a4vdc2";
  };
  buildInputs = [ pkgconfig gobjectIntrospection spidermonkey_24 ];
}
