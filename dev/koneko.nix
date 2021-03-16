#Touka-specific configuration file.

{ config, pkgs, ... }:

{
    #Time adjust for windows NT
    time.hardwareClockInLocalTime = true;

    #Booting
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    
    #Network
    networking = {
        networkmanager.enable = true;
        hostName = "koneko";
        useDHCP = false;
        interfaces.enp0s25.useDHCP = true;
    };
}
