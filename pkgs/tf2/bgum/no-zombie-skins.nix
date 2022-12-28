{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-zombie-skins";
  version = "42e207896543578e70d8cde09c309519f0361027";

  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/no_zombie_skins.vpk";
    sha256 = "sha256-0CmxiedonO+0NEe0pBG4Z7TTaC2RycWTDHaDLSuwuls=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
