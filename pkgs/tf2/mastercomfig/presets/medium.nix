{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "medium";
  version = "9.10.1";

  filename = "mastercomfig-medium-preset.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-4aEfLEGY1YaCy4deKhdUFi5qlIfBePRvj4xVyAkYsks=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
