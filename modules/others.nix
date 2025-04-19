{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Langs
    gcc
    cmake

    nodejs
    bun

    python3

    # Libraries
    # manim

    # PHP
    # mariadb
    # apacheHttpd
    # phpmyadmin
    # php
  ];

  # systemd.services.mysql = {
  #   enable = false;
  #   startWhenNeeded = true;
  # };
  #
  # systemd.services.apache = {
  #   enable = false;
  #   startWhenNeeded = true;
  #   serviceConfig.ExecStart = "/opt/lampp/lampp start";
  #   serviceConfig.ExecStop = "/opt/lampp/lampp stop";
  # };
  #
  # systemd.services.phpmyadmin = {
  #   enable = false;
  #   startWhenNeeded = true;
  # };
}
