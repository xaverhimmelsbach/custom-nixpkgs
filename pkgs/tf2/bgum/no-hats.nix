{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "no-hats";
  version = "42e207896543578e70d8cde09c309519f0361027";

  filename = "no_hats_bgum.vpk";
  src = pkgs.fetchurl {
    url = "https://github.com/Fedora31/no-hats-bgum/raw/${version}/${filename}";
    sha256 = "sha256-YgC7xg+WJdPj38r4Hzm8ST32Za5GIh9ELdtiCtVXMa0=";
  };

  buildCommand = ''
    mkdir -p $out
    cp $src $out/out.vpk
    echo "$filename" > $out/filename
  '';
}
