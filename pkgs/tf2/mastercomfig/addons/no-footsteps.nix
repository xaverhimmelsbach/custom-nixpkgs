{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-footsteps";
  version = "9.10.1";

  filename = "mastercomfig-no-footsteps-addon.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/mastercomfig/mastercomfig/releases/download/${version}/${filename}";
    sha256 = "sha256-8gz3NXloXTjnLc/THlOuwtB/pUStmn/5DjFiNVpktRk=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
