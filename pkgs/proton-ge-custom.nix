{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "proton-ge-custom";
  version = "GE-Proton9-5";

  src = pkgs.fetchurl {
    url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
    hash = "sha256-lEoHakxH7vvUmnBVAfJJYZ87WIeS1eIz1CFMczrNVTA=";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}
