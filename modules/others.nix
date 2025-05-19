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
    flatpak

    # Libraries
    # manim
  ];

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  home.activation.installFlatpaks = lib.hm.dag.entryAfter ["writeBoundary"] ''
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak install -y flathub com.spotify.Client
    flatpak install -y flathub app.zen_browser.zen
  '';
}
