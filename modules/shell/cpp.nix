{ pkgs, ... }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gcc
    pkgs.cmake
    pkgs.ftxui
  ];
}
