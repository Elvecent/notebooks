let
  pkgs    = import ./pkgs.nix;
  nixpkgs = import pkgs.nixpkgs {};
  notebooks = map (folder: {
    name = folder;
    path = import (./. + "/${folder}");
  });
in nixpkgs.linkFarm "notebooks" (notebooks [
  "lens-aeson"
])
