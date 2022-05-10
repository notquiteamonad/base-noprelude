let
  nixpkgs = import (import nix/sources.nix).nixpkgs {};
in
  nixpkgs.mkShell {
    buildInputs = with nixpkgs; [
      haskell.compiler.ghc902
      haskellPackages.cabal-install
    ];
  }
