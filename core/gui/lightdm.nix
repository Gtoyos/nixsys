#lightdm session config
{configs,pkgs,...}:
{
  services.xserver.displayManager.lightdm = {
    enable = true;
    background = /home/cardinal/media/images/wallpapers/1607215490486.jpg;
    greeter.enable = true;
    greeters = {
      gtk = {
        enable = true;
#        blur = true;
        theme = {
          name = "Sweet-Dark";
          package = pkgs.sweet;
        };
      };
    };
  };
}

