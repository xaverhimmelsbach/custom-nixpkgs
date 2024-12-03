{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "proton-ge-custom";
  version = "GE-Proton9-20";

  src = pkgs.fetchurl {
    url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
    hash = "sha256-jDWZ4m5aUALhs/EhGwrFa/3dbrLE3Lrn2BAnGC7TbIk=";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}
