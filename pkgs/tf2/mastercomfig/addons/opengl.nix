{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "opengl";
  version = "9.10.1";

  filename = "mastercomfig-opengl-addon.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-ohwPWis5cJIBed/bO9zWI7/fq8px28QQ4zA2P27dx+g=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
