{pkgs, ...}:
with pkgs.python3Packages;
buildPythonPackage rec {
  name = "spotify-backup";
  version = "0ccf12c9c7a399c6a08a38366ee02151ea04369b";

  src = pkgs.fetchFromGitHub {
    owner = "caseychu";
    repo = name;
    rev = version;
    sha256 = "sha256-+z9IWgtc71GPPLDqNU4PXFDyD5Dczp3Bbrwzy/DaIts=";
  };

  preBuild = ''
    cat > setup.py << EOF
from setuptools import setup

setup(
  name='spotify_backup',
  scripts=[
    'spotify-backup.py',
  ],
  entry_points={
    'console_scripts': ['spotify_backup=spotify_backup:main'],
  },
)
EOF'';

  postInstall = ''
    mv -v $out/bin/spotify-backup.py $out/bin/spotify-backup
  '';
}
