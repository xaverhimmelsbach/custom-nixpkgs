{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "flat-mouse";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-flat-mouse-addon.vpk";
    sha256 = "sha256-v2Url+m8dzXIrs8mz5VZWRqwqSSaxyH7t2vDvT10cdg=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}