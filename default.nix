let
  nixpkgs = import (import nix/sources.nix).nixpkgs {};
in
nixpkgs.haskell.packages.ghc8106.callCabal2nix "base-noprelude" ./. {}
