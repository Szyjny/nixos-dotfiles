{ pkgs, ... }:

{
  home.packages = with pkgs; [ starship ];

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  home.file.".config/starship.toml".source = ./theme.toml;
}
