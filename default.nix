{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "googler";

  src = ./.;

  installPhase = ''
    make install PREFIX=$out
  '';
}
