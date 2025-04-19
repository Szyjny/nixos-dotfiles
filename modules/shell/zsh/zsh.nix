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

    # Others
    btop
    tldr
  ];

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = import ./aliases.nix;
    initExtra = builtins.readFile ./init-extra.zsh;
  };
}
