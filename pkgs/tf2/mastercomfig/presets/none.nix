{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "none";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-none-preset.vpk";
    sha256 = "sha256-jIMEsGu5QoFjhMPkp8pvB3S81yXAfuXZilG9JEqOLvE=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
