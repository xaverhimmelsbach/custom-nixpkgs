{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "opengl";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-opengl-addon.vpk";
    sha256 = "sha256-ohwPWis5cJIBed/bO9zWI7/fq8px28QQ4zA2P27dx+g=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out
  '';
}