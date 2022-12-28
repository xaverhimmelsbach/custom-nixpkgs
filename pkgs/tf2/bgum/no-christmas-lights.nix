{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-christmas-lights";
  version = "42e207896543578e70d8cde09c309519f0361027";

  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/no_christmas_lights.vpk";
    sha256 = "sha256-wzBP0FtwVUKShFghNR4pyn1+oJz9P1561ougTKxN59w=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}