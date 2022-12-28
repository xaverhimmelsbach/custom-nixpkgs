{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "medium-low";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-medium-low-preset.vpk";
    sha256 = "sha256-/P1QasA9gIcxzTYk1xB2ufQ75xRxi04iDAAa1NHkDjQ=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
