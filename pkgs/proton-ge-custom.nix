{ stdenv, fetchFromGitHub, ... }:
stdenv.mkDerivation rec {
  pname = "proton-ge-custom";
  version = "GE-Proton7-43";

  src = fetchFromGitHub {
    owner = "GloriousEggroll";
    repo = pname;
    rev = version;
    sha256 = "sha256-XYre/EwQZCpjNFlb5sG+BhbK5aA7K3xBptuiII8YQ50=";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}
