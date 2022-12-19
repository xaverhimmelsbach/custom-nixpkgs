{
  description = "Custom nixpkgs";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      packages.${system} = ((import ./pkgs) { } pkgs);

      overlays.default = final: prev: (import ./pkgs) final prev;
    };
}
