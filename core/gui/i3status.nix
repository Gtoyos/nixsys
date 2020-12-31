#Home-manager i3status config file
{pkgs, configs,...}:
{
  programs.i3status = {
    enable = true;
    modules = {
      "volume master" = {
        enable=true;
        position=1;
        settings = {
          format = "muh %volume";
          format_muted = "MUTED";
          device = "pulse:1";
        };
      };
    };
  };
}
