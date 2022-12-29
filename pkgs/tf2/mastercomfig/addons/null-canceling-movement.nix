{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "null-canceling-movement";
  version = "9.10.1";

  filename = "mastercomfig-null-canceling-movement-addon.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-B3pHn80lMRN4q5hF/JSAdzDLTnyh7MNbYzMURrYmXxU=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
