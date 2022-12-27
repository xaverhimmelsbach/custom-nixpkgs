{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-soundscapes";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-no-soundscapes-addon.vpk";
    sha256 = "sha256-a1//MSddZM9Luj4qIDS9woT5adTLFRYDr9KtoD/1i5A=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out
  '';
}