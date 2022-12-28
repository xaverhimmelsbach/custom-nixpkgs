{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-hats-creatorstf";
  version = "42e207896543578e70d8cde09c309519f0361027";

  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/no_hats_creatorstf.vpk";
    sha256 = "sha256-VLBLZR/C2CvWdeloFxvN2AyU/IqNDLnNLRvhaXV9ZR4=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
