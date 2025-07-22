{ pkgs, ...}:

{
  home.packages = with pkgs; [
    sway
    wofi
    wofi-emoji
    wl-clipboard
    nerd-fonts.space-mono
  ];

  home.file.".config/sway/config".source = ./config;
  home.file.".config/wofi/style.css".source = ./style.css;

  home.sessionVariables = {
    GTK_THEME = "Adwaita:dark";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    # QT_STYLE_OVERRIDE = "kvantum"; # jeśli używasz Kvantum do stylów Qt
    XCURSOR_THEME = "Bibata-Modern-Ice"; # (opcjonalnie, by spójnie wyglądał kursor)
    XDG_CURRENT_DESKTOP = "sway"; # niektóre aplikacje sprawdzają to
    XDG_SESSION_TYPE = "wayland";
    MOZ_ENABLE_WAYLAND = "1";
    GTK_APPLICATION_PREFER_DARK_THEME = "1"; # super ważne!
  };
}
