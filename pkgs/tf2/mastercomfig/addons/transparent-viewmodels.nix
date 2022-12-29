{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "transparent-viewmodels";
  version = "9.10.1";

  filename = "mastercomfig-transparent-viewmodels-addon.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-nsUBSsGHXM+xwecixZvhisbifLqkqSyF7kIkJFmq6ow=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
