{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Langs
    gcc
    cmake
    # libstdc++
    ftxui
    cmake-language-server

    nodejs
    bun

    python3
    marksman
    openvpn

    flameshot

    # Libraries
    # manim
  ];
}
