#Touka-specific configuration file.

{ config, pkgs, ... }:

{
    #Booting
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    #Network
    networking = {
        hostName = "touka";
        networkmanager.enable = true;

        useDHCP = false;
        interfaces.enp0s25.useDHCP = true;
        interfaces.wlp3s0.useDHCP = true;
    };

    #Enable touchpad support.
    services.xserver.libinput.enable = true;
    services.xserver.libinput.tapping = false;

    #Raw MediaKeys support.
    sound.mediaKeys.enable = true;

    #What to do when lid is closed
    services.logind.lidSwitch = "suspend";
}
