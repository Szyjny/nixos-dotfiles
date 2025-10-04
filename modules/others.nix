{ pkgs, lib, config, ... }:

{
  home.packages = with pkgs; [
    # Langs
    gcc
    gdb
    gdb-dashboard
    cgdb
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

    # polybar
    # zellij
    nvtopPackages.amd
    # wine
    gimp
    usbutils

    # vieb
    chess-tui
    zed-editor
    virt-manager
    android-studio
    libreoffice-qt
    sdkmanager
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

  home.file.".gdbinit".text = ''
    dashboard -style syntax_highlighting on
    dashboard -style style low
    dashboard variables -style value "\033[38;5;242m"
    dashboard variables -style highlight "\033[48;5;236m"
  '';
}

