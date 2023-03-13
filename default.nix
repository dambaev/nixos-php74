let
  pkgs1 = import <nixpkgs> {
    config = {};
    overlays = [
    ];
  };
  overlay = (import ./overlay.nix);
  pkgs = import <nixpkgs> {
    config = {};
    overlays = [
      overlay
    ];
  };
in {
  php74 = pkgs.php74;
}

