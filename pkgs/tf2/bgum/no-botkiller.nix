{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-botkiller";
  version = "42e207896543578e70d8cde09c309519f0361027";

  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/no_botkiller.vpk";
    sha256 = "sha256-gkxKzOB1lH32lFt++rG/9+EZZCGVwZ3RU1AuSRmCqCE=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
