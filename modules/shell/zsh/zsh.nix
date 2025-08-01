{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # General
    zsh
    # neovim
    tmux

    # Git
    git
    gh
    lazygit

    # Utils
    yazi
    ripgrep
    zoxide
    fd
    cmatrix

    # Rice
    fastfetch
    cbonsai
    eza
    bat
    delta
    cava

    # Others
    btop
    tldr
    unzip

    gdb
    lua-language-server
    clang-tools
    gcc
    acpi
    nil
    nixpkgs-fmt

    cowsay
    fortune
  ];

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = import ./aliases.nix;
    initContent = builtins.readFile ./init-extra.zsh;
  };

  programs.direnv.enable = true;

  home.file.".config/fastfetch/config.jsonc".source = ./config.jsonc;
  home.file.".devjokes".source = ./devjokes;
  home.file.".devjokes.dat".source = ./devjokes.dat;
}
