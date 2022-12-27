{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-tutorial";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-no-tutorial-addon.vpk";
    sha256 = "sha256-/LOicAYaPdeZMCf+CzbmURKMYEwRCU/LXCX2vxDYonM=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out
  '';
}