let
  pkgs = import <nixpkgs> {};
in
  { stdenv ? pkgs.stdenv,
    python ? pkgs.python,
    pygobject3 ? pkgs.pygobject3,
  }:

stdenv.mkDerivation {
  name = "sails-ui";
  version = "0.1.0";
  src = ./.;
  buildInputs = [ python pygobject3 ];
}
