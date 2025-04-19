{
  # General
  cls = "clear";
  n = "nvim";
  cd = "z";
  ":q" = "exit";
  update = "nix-channel --update && home-manager switch --refresh && source ~/.zshrc && swaymsg reload";

  # Rice / Visuals
  ff = "fastfetch";
  bonsai = "cbonsai -l 40 -s 9";
  grep = "grep --color=auto";

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



  # Sql
  # sql = "/opt/lampp/bin/mysql";
  # rsql = "/opt/lampp/bin/mysql -u root -p";
  # htdocs = "cd /opt/lampp/htdocs";
  # xmapp = "/opt/lampp/lampp";
  # 
  # sql = ''
  #   if ! pgrep -x "mysqld" > /dev/null; then
  #     echo "Uruchamiam MySQL..."
  #     sudo systemctl start mysql
  #   fi
  #   mysql
  # '';

  # Uruchamia mysql (jeżeli nie było uruchomione) oraz phpMyAdmin
  # sqlgui = ''
  #   if ! pgrep -x "mysqld" > /dev/null; then
  #     echo "Uruchamiam MySQL..."
  #     sudo systemctl start mysql
  #   fi
  #   # Uruchamia phpMyAdmin
  #   php -S localhost:8000 -t localhost/phpmyadmin &
  #   echo "Uruchamiam phpMyAdmin na localhost:8000..."
  # '';

  # Wyłącza MySQL
  # mysql-off = "sudo systemctl stop mysql";

  # Wyłącza phpMyAdmin oraz MySQL
  # phpmyadmin-off = ''
  #   pkill -f "php -S localhost:8000" && echo "Zatrzymano phpMyAdmin"
  #   sudo systemctl stop mysql && echo "Zatrzymano MySQL"
  # '';

  # Włącza Apache
  # apache-on = "sudo systemctl start apache2";

  # Wyłącza Apache
  # apache-off = "sudo systemctl stop apache2";
}
