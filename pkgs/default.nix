self: super:
with super; rec {
  proton-ge-custom = callPackage ./proton-ge-custom.nix { };
  tf2 = {
    mastercomfig = {
      presets = {
        none = callPackage ./tf2/mastercomfig/presets/none.nix { };
        very-low = callPackage ./tf2/mastercomfig/presets/very-low.nix { };
        low = callPackage ./tf2/mastercomfig/presets/low.nix { };
        medium-low = callPackage ./tf2/mastercomfig/presets/medium-low.nix { };
        medium = callPackage ./tf2/mastercomfig/presets/medium.nix { };
        medium-high = callPackage ./tf2/mastercomfig/presets/medium-high.nix { };
        high = callPackage ./tf2/mastercomfig/presets/high.nix { };
        ultra = callPackage ./tf2/mastercomfig/presets/ultra.nix { };
      };
      addons = {
        disable-pyroland = callPackage ./tf2/mastercomfig/addons/disable-pyroland.nix { };
        flat-mouse = callPackage ./tf2/mastercomfig/addons/flat-mouse.nix { };
        lowmem = callPackage ./tf2/mastercomfig/addons/lowmem.nix { };
        no-footsteps = callPackage ./tf2/mastercomfig/addons/no-footsteps.nix { };
        no-soundscapes = callPackage ./tf2/mastercomfig/addons/no-soundscapes.nix { };
        no-tutorial = callPackage ./tf2/mastercomfig/addons/no-tutorial.nix { };
        null-canceling-movement = callPackage ./tf2/mastercomfig/addons/null-canceling-movement.nix { };
        opengl = callPackage ./tf2/mastercomfig/addons/opengl.nix { };
        transparent-viewmodels = callPackage ./tf2/mastercomfig/addons/transparent-viewmodels.nix { };
      };
    };
  };
}
