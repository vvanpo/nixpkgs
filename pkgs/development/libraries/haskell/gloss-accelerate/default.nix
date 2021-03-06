# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, accelerate, accelerateCuda, gloss }:

cabal.mkDerivation (self: {
  pname = "gloss-accelerate";
  version = "1.8.15.0";
  sha256 = "1nj2rnp2bg3xmi4xbaws9jc7qx3b4qqg9fyvfv13xdav28d7iqb0";
  buildDepends = [ accelerate accelerateCuda gloss ];
  meta = {
    description = "Extras to interface Gloss and Accelerate";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    hydraPlatforms = self.stdenv.lib.platforms.none;
  };
})
