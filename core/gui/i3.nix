#i3 configuration file

{ config, pkgs, ... }:

{
    services.xserver = {
        enable = true;
        layout = "us, es, jp";
        windowManager.i3 = {
            enable = true;
            package = pkgs.i3-gaps;
            extraPackages = with pkgs;[
                rofi
                i3blocks
                i3lock
                xss-lock
            ];
            configFile = ./i3.config;
        };
    };
    environment.etc = {
      "i3blocks.conf" = {
        source = ./i3blocks.config;
      }; 
      "scripts/battery.py" = {
        source = ./scripts/battery.py;
      };
      "scripts/wifi.sh" = {
        source = ./scripts/wifi.sh;
      };
      "scripts/cpu.pl" = {
        source = ./scripts/cpu.pl;
      };
      "scripts/volume.sh" = {
        source = ./scripts/volume.sh;
      };
      "scripts/bright.sh" = {
        source = ./scripts/bright.sh;
      };
    };
}
