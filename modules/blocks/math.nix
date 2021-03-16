# Home-manager math packages declaration

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # General 
    octaveFull bc

    # Latex
    texmaker dot2tex texlive.combined.scheme-full
  ];
}
