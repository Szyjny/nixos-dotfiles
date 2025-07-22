{ pkgs, lib, config, ... }:

{
  home.packages = with pkgs; [
    # Langs
    gcc
    cmake
    cmake-language-server

    nodejs
    bun

    python3
    marksman
    openvpn

    flameshot
    flatpak

    libsForQt5.qt5ct # GUI do ustawień Qt5
    gammastep

    udisks
    tigervnc

    zellij
    nvtopPackages.amd
    wine
  ];

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  home.activation.installFlatpaks = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    ${pkgs.flatpak}/bin/flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    ${pkgs.flatpak}/bin/flatpak install --user -y flathub com.spotify.Client
    ${pkgs.flatpak}/bin/flatpak install --user -y flathub app.zen_browser.zen
  '';

  home.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "qt5ct";
  };
}

