{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "ultimate-visual-fix-pack";
  version = "v1.0-rc3";

  src000 = pkgs.fetchurl {
    url = "https://github.com/agrastiOs/Ultimate-TF2-Visual-Fix-Pack/releases/download/${version}/TF2UltimateVisualFix_000.vpk";
    sha256 = "sha256-eCf9GRskWqyI4lni2zjCdzhcSJZdDBJL94jabVb7EYM=";
  };

  srcDir = pkgs.fetchurl {
    url = "https://github.com/agrastiOs/Ultimate-TF2-Visual-Fix-Pack/releases/download/${version}/TF2UltimateVisualFix_dir.vpk";
    sha256 = "sha256-IcMzaCU/EcK8bvACxMsEJl1rhUCf/m0H8ExV0u+XVRg=";
  };

  outputs = [
    # Default output, contains dir vpk
    "out"
    # Additional output, contains 000 vpk
    "vpk_000"
  ];

  buildCommand = ''
    mkdir -p $out
    mkdir -p $vpk_000
    cp $srcDir $out/out.vpk
    cp $src000 $vpk_000/out.vpk
  '';
}
