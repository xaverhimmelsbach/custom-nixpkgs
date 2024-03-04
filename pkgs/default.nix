self: super:
with super; {
  proton-ge-custom = callPackage ./proton-ge-custom.nix { };
  spotify-backup = callPackage ./spotify-backup.nix { };
}
