openssl: self: super:
let
  pkgs = self // { openssl = openssl; };
in
{
  php74 = pkgs.callPackage ./7.4.nix {};
}
