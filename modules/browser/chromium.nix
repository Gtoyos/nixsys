#Chromium browser home-manager configuration

{ config, pkgs, ... }:

{
    programs.chromium = { 
        enable = true;
        extensions = [
            "cjpalhdlnbpafiamejdnhcphjbkeiagm" 
            "ohnjgmpcibpbafdlkimncjhflgedgpam"
            "gcbommkclmclpchllfjekcdonpmejbdp"
            "ckkdlimhmcjmikdlpkmbgfkaikojcbjk" #Markdown viewer
        ];
    };
}
