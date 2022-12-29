{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "medium-high";
  version = "9.10.1";

  filename = "mastercomfig-medium-high-preset.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-7OvkQBiBZ74o0WLSp3ng6CXeMVW2+H1pSeherPTpzmQ=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
