let
  nixpkgs = import (import nix/sources.nix).nixpkgs {};
in
nixpkgs.mkShell {
  buildInputs = with nixpkgs; [
    haskell.compiler.ghc884
    haskellPackages.cabal-install
  ];
}
