#ssh config

{pkgs, configs,...}:

{
  services.openssh = {
    enable = true;
    #banner = "ATTEMPTING CONNECTION WITH TOUKA NIXOS SYSTEM";
  };
  programs.ssh.startAgent = true;
}
