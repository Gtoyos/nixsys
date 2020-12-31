# Home-manager media packages declaration

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Visualization
    feh mpv graphviz

    # Manipulation
    youtube-dl ffmpeg

    #Audio utilities
    pamixer pavucontrol
  ];
}
