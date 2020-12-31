# Home-manager utilities packages declaration

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [

    # Data wrangling
    R pup jq

    # Dictionaries
    wget aspell aspellDicts.en aspellDicts.es

    # Misc
    neofetch ranger xorg.xev

    # Web
    wget curl wirelesstools

    # Sysadmin
    iftop tcptrack sysstat htop slurm tree bc stress

    # Gui customization
    lxappearance sweet
  ];
}
