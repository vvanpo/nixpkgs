{ cabal, bifunctors, binary, bytes, cereal, comonad, doctest
, filepath, hashable, hashableExtras, preludeExtras, profunctors
, transformers, vector
}:

cabal.mkDerivation (self: {
  pname = "bound";
  version = "1.0.3";
  sha256 = "0nfcxq87i9lzdkrg7g65cprn4rg9rhn9nyk2jpjh4c1rc7gdn0aq";
  buildDepends = [
    bifunctors binary bytes cereal comonad hashable hashableExtras
    preludeExtras profunctors transformers
  ];
  testDepends = [
    doctest filepath preludeExtras transformers vector
  ];
  meta = {
    homepage = "http://github.com/ekmett/bound/";
    description = "Making de Bruijn Succ Less";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.ocharles ];
  };
})