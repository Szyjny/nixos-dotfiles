{ pkgs, ...  }:

{
  home.packages = with pkgs; [
    tmux
    tmux-sessionizer
  ];

  home.file.".tmux.conf".source = ./tmux.conf;
}
