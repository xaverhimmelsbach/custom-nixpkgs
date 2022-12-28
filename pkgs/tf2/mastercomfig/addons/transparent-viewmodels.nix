{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "transparent-viewmodels";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-transparent-viewmodels-addon.vpk";
    sha256 = "sha256-nsUBSsGHXM+xwecixZvhisbifLqkqSyF7kIkJFmq6ow=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}