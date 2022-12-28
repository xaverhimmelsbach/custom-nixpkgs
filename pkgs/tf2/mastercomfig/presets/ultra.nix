{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "ultra";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-ultra-preset.vpk";
    sha256 = "sha256-ujkNIY9Y59vyv985iWjqWs/Z3xPzzBTdhQMr5B/aZN0=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
