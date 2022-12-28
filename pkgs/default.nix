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
    ultimate-visual-fix-pack = {
      ultimate-visual-fix-pack = callPackage ./tf2/ultimate-visual-fix-pack/ultimate-visual-fix-pack.nix { };
      ultimate-visual-fix-pack-no-model-fixes = callPackage ./tf2/ultimate-visual-fix-pack/ultimate-visual-fix-pack-no-model-fixes.nix { };
    };
    bgum = {
      no-hats = callPackage ./tf2/bgum/no-hats.nix { };
      no-bugged-misc = callPackage ./tf2/bgum/no-bugged-misc.nix { };
      no-hats-creatorstf = callPackage ./tf2/bgum/no-hats-creatorstf.nix { };
      no-unusuals = callPackage ./tf2/bgum/no-unusuals.nix { };
      no-christmas-lights = callPackage ./tf2/bgum/no-christmas-lights.nix { };
      no-skins = callPackage ./tf2/bgum/no-skins.nix { };
      no-botkiller = callPackage ./tf2/bgum/no-botkiller.nix { };
      no-zombie-skins = callPackage ./tf2/bgum/no-zombie-skins.nix { };
    };
  };
}
