{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-footsteps";
  version = "9.10.1";

  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/mastercomfig-no-footsteps-addon.vpk";
    sha256 = "sha256-8gz3NXloXTjnLc/THlOuwtB/pUStmn/5DjFiNVpktRk=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
  '';
}