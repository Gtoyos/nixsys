#Localization configuration file.

{ config, pkgs, ... }:

{
    #TimeZone
    time.timeZone = "America/Montevideo";

    #Internationalization
    i18n = {
        defaultLocale = "en_US.UTF-8";
        inputMethod.enabled = "fcitx";
        inputMethod.fcitx.engines = with pkgs.fcitx-engines; [ anthy mozc ];
    };
    
    #Fonts
    fonts = {
      fonts = with pkgs; [
        source-code-pro
        fira
        fira-code
        nerdfonts
        ipafont
        twitter-color-emoji
      ];

      enableFontDir = true;
      enableGhostscriptFonts = true;

      fontconfig = {
        enable = true;
        antialias = true;
        useEmbeddedBitmaps = true;

        defaultFonts = {
          serif = [ "Twitter Color Emoji" "Source Code Pro" "IPAGothic" "DejaVu Serif" ];
          sansSerif = [ "Twitter Color Emoji" "Source Code Pro" "IPAPGothic" "DejaVu Sans" ];
          monospace = [ "Twitter Color Emoji" "Source Code Pro" "Fira Code" "IPAPMincho" ];
          emoji = [ "Twitter Color Emoji" ];
        };
      };
    };
}
