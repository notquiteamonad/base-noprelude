let
  nixpkgs = import (import nix/sources.nix).nixpkgs { };
in
nixpkgs.mkShell {
  buildInputs = with nixpkgs; [
    haskell.compiler.ghc923
    haskellPackages.cabal-install
    haskellPackages.cabal-fmt
  ];
}

