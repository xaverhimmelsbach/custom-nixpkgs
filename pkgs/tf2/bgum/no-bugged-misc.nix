{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-bugged-misc";
  version = "42e207896543578e70d8cde09c309519f0361027";

  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/no_bugged_misc.vpk";
    sha256 = "sha256-OvOoMmjy+zP8pkKvSvjEZpwSKFNyHqwG3OKzDtClu4k=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
