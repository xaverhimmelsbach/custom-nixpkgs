{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "flat-mouse";
  version = "9.10.1";

  filename = "mastercomfig-flat-mouse-addon.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-v2Url+m8dzXIrs8mz5VZWRqwqSSaxyH7t2vDvT10cdg=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
