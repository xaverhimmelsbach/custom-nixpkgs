{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "high";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-high-preset.vpk";
    sha256 = "sha256-oEfi+JGsMqH4t4ozWBvKGx0hqw2ME9BbI14xlrYYDTY=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}
