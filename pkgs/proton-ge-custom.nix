{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "proton-ge-custom";
  version = "GE-Proton8-1";

  src = pkgs.fetchurl {
    url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${version}/${version}.tar.gz";
    sha256 = "sha256-evxo0/RHRTRLYamMJxOUC1S+/4D40XJ41vNLpIQRooE=";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}
