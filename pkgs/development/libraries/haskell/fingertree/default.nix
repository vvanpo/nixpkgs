# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, HUnit, QuickCheck, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2
}:

cabal.mkDerivation (self: {
  pname = "fingertree";
  version = "0.1.0.0";
  sha256 = "0c35sryzsijwavvw9x1pk5p99rhmp4g8pjh2ds419mlfgxc039ms";
  testDepends = [
    HUnit QuickCheck testFramework testFrameworkHunit
    testFrameworkQuickcheck2
  ];
  meta = {
    description = "Generic finger-tree structure, with example instances";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
