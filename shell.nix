{
  pkgs ? import <nixpkgs> {},
  lib ? pkgs.lib,
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.python3
    (pkgs.python3.withPackages (ps: [ ps.pip-tools ps.pipdeptree ]))
  ];
}
