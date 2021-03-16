#NIXOS CONFIGURATION

{ config, pkgs, ... }:

{
    imports =
    [ 
        # Hardware
        ./hardware-configuration.nix    #Symlink
        ./dev/touka.nix #Replace with current host

        # Core config
        ./core/locale.nix
        ./core/sound.nix
        ./core/users.nix
        ./core/environment.nix
        ./core/gui/i3.nix
        ./core/gui/lightdm.nix

        # Services
        ./core/services/ssh.nix
    ];

    system.stateVersion = "20.03"; # Change to nixos initial realease?
}
