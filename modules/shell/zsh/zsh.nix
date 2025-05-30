{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # General
    zsh
    neovim
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

    # Others
    btop
    tldr
    unzip

    lua-language-server
    clang-tools  # clangd
    rust-analyzer
    gcc
    acpi

    cowsay
    fortune
  ];

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = import ./aliases.nix;
    initExtra = builtins.readFile ./init-extra.zsh;
  };

  home.file.".config/fastfetch/config.jsonc".source = ./config.jsonc;
  home.file.".devjokes".source = ./devjokes;
  home.file.".devjokes.dat".source = ./devjokes.dat;
}
