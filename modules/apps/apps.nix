{ pkgs, ... }:

{
  imports = [
    ./kitty/kitty.nix
  ];

  home.packages = with pkgs; [
    spotify
    libreoffice
    gimp
    xfce.thunar
  ];
}
