openssl: self: super:
let
  pkgs = self // { openssl = openssl; };
in
{
  php74 = self.callPackage ./7.4.nix {};
}
