{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [ kitty ];

  programs.kitty = lib.mkForce {
    enable = true;
    font = {
      name = "SpaceMono Nerd Font";
      package = pkgs.nerd-fonts.space-mono;
    };
    settings = {
      background_opacity = "0.85";
      enable_audio_bell = "no";
      confirm_os_window_close = 0;
    };
    extraConfig = ''
      include ./kitty-themes/tokyo-night-moon.conf
    '';
  };
}
