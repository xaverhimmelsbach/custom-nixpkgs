{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "proton-ge-custom";
  version = "GE-Proton8-25";

  src = pkgs.fetchurl {
    url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
    sha256 = "sha256-s3FgsnqzbgBo9zqwmsDJNjI8+TTG827bFxzWQr184Yo=";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}
