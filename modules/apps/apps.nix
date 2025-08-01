{ pkgs, ... }:

{
  imports = [
    ./kitty/kitty.nix
  ];

  home.packages = with pkgs; [
    # libreoffice
    # gimp
    # xfce.thunar
    vscodium
    # ida-free
    evince
  ];
}
