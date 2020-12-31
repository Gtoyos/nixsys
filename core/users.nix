#user configuration file

{ config, pkgs, ... }:

{
    users = {
            groups = {
                networkmanager = { }; #Consistency group if network manager is deactivated
            };

            users = {
                cardinal = {
                    description = "Cardinal System Administrator";
                    isNormalUser = true;
                    extraGroups = [ "wheel" "networkmanager"];
                    shell = pkgs.fish;
                };
        };
    };
}
