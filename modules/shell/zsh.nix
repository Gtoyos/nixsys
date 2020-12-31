#Zsh home-manager configuration

{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    shellAliases = {
      ll = "ls -lh";
      ".." = "cd ..";
      neof = "neofetch";
    };
    sessionVariables = {
      EDITOR = "vim";
      BROWSER = "chromium";
    };
    initExtra = ''
      bindkey -v
    '';
  };
}
