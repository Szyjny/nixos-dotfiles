{
  # General
  cls = "clear";
  n = "nvim";
  cd = "z";
  diff="delta";
  tmss = "tms switch";
  ":q" = "exit";
  update = ''
    nix-channel --update &&
    home-manager switch --refresh &&
    source ~/.zshrc &&
    tmux source-file ~/.tmux.conf &&
    swaymsg reload &&
    strfile ~/.config/home-manager/modules/shell/zsh/devjokes ~/.config/home-manager/modules/shell/zsh/devjokes.dat
  '';

  # Rice / Visuals
  ff = "fastfetch";
  bonsai = "cbonsai -l 40 -s 9";
  grep = "grep --color=auto";
  sus = "fortune ~/devjokes | cowsay -f sus";

  # Going back
  b = "cd ..";
  b2 = "cd ../..";
  b3 = "cd ../../..";

  # Eza (aka better ls)
  ls = "eza --icons --git";
  l = "eza -l --icons --git -a";

  # Others
  lg = "lazygit";
  mtui = "(pgrep mpd > /dev/null || mpd) && ncmpcpp";
}
