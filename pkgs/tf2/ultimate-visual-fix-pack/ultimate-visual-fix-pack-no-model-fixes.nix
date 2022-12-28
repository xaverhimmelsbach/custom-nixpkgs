{ stdenv, pkgs, ... }:
stdenv.mkDerivation rec {
  pname = "ultimate-visual-fix-pack-no-model-fixes";
  version = "v1.0-rc3";

  src000 = pkgs.fetchurl {
    url = "https://github.com/agrastiOs/Ultimate-TF2-Visual-Fix-Pack/releases/download/${version}/TF2UltimateVisualFix_noModelFixes_000.vpk";
    sha256 = "sha256-wO8iSA79T346hqRvdOLdiMRov5c/Jc4ERO2DEame9zc=";
  };

  srcDir = pkgs.fetchurl {
    url = "https://github.com/agrastiOs/Ultimate-TF2-Visual-Fix-Pack/releases/download/${version}/TF2UltimateVisualFix_noModelFixes_dir.vpk";
    sha256 = "sha256-Lgzgnu1Os/w+6jX3XO9PITVsCamy9MZPkItc2CA/+Wc=";
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
