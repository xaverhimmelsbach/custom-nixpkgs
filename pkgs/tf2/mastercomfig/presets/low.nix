{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "low";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-low-preset.vpk";
    sha256 = "sha256-WREA0U8LH4MOsyhrCosUkXlZZSXtcX1Z1WyRIzn9tM4=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out
  '';
}
