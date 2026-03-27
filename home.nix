{ config, pkgs, ... }:

{
  home.username = "duxtr";
  home.homeDirectory = "/home/duxtr";
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./modules/dev/php
    ./modules/git
  ];

  home.packages = with pkgs; [
    # browsers
    firefox

    git
    gh
    curl
    wget
    jq
    htop
    btop
    fastfetch
    ripgrep
    fzf
    tmux
    zsh

    # devops stuff
    docker-compose
    kubectl
    ansible
    terraform

    # editors
    vscode
    neovim

    # utilities
    unzip
    zip
    tree
    bat
    eza
    fd

    discord
    telegram-desktop
    obs-studio
    vlc
    jetbrains-toolbox
  ];
}