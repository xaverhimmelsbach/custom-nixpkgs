{ stdenv, fetchFromGitHub, ... }:
stdenv.mkDerivation rec {
  pname = "proton-ge-custom";
  version = "GE-Proton7-43";

  src = fetchFromGitHub {
    owner = "GloriousEggroll";
    repo = pname;
    rev = version;
    sha256 = "sha256-RZGJxxDW2GGRdfHN/HIocK4EPVQwyJlKIc++OPsZoPI=";
  };

  buildCommand = ''
    mkdir -p $out
    tar -C $out --strip=1 -x -f $src
  '';
}
