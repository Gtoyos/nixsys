# Home-manager utilities packages declaration

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [

    # Doc viewer
    okular

    # Comms
    thunderbird 

    # Data wrangling
    R pup jq

    # Dictionaries
    wget aspell aspellDicts.en aspellDicts.es

    # Misc
    neofetch ranger xorg.xev calcurse

    # Web
    wget curl wirelesstools

    # Sysadmin
    iftop tcptrack sysstat htop slurm tree bc stress

    # Gui customization
    lxappearance sweet gtk-engine-murrine gnome-themes-standard

    # Compression
    unzip
  ];
}
