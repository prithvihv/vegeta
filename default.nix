{ pkgs ? import <nixpkgs> { } }:
let
in with pkgs;
buildGoModule {
  pname = "vegeta";
  version = "phv-dev";
  src = lib.cleanSource ./.;
  vendorSha256 = "1q5q675b3203np5y51y88z7cq6mijdl2sa326m5ds9kpmwqj0hy7";

  checkPhase = ''
	echo "ignore tests"
  '';

}
