#system environment

{pkgs, config, ...}:

{
  environment.systemPackages = with pkgs; [
    #Global dependencies
    openssl
    sqlite

    #Global shells
    fish
    zsh
    tcsh

    #Hardware solutions
    acpilight 
 ];
}
