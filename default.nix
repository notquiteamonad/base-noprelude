let
  nixpkgs = import (import nix/sources.nix).nixpkgs {};
in
  nixpkgs.haskell.packages.ghc902.callCabal2nix "base-noprelude" ./. {}
