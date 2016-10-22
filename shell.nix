{ compiler ? "ghc7102" }:
with (import ~/nixpkgs {});

haskell.lib.buildStackProject {
  inherit ghc;
  name = "myEnv";
  buildInputs = [ glpk openssl pcre postgresql.lib stack zlib ];
}
