{
  pkgs ? import <nixpkgs> { }
}:
pkgs.stdenv.mkDerivation rec {
  pname = "app";
  version = "0.0.1";

  src = ./.;

  doCheck = true;

  checkInputs = with pkgs; [
    criterion
  ];

  checkPhase = ''
    gcc -c lib.c
    gcc -c tests.c
    gcc -o tests tests.o lib.o -lcriterion
    ./tests
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv app $out/bin
  '';
}
