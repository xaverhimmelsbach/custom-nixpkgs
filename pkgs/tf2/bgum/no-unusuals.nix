{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-unusuals";
  version = "42e207896543578e70d8cde09c309519f0361027";

  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/no_unusuals.vpk";
    sha256 = "sha256-n3sFsm/Az0iaBPbkXbf3CdeED/FlW3y6wP8Ki0FVD8U=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
