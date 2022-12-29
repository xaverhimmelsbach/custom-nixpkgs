{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "disable-pyroland";
  version = "9.10.1";

  filename = "mastercomfig-disable-pyroland-addon.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-3yKXnTVwIwcsZn+x0Qz1I2hGkS67bIrHea8PExR+G/U=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
