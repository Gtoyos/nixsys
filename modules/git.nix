#Git configuration
{pkgs,configs,...}:
{
  programs.git = {
    enable = true;
    aliases = {
      co = "checkout";
      logdag = "log --all --graph --decorate";
    };
    #delta.enable = true;
    userName = "Gtoyos";
    userEmail = "guille.toyos@gmail.com";

    extraConfig = {
      color.ui = true;
      core.editor = "vim";
    };
  };
}
