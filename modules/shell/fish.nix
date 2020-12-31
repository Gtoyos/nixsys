#Home-Manager fish shell configuration

{configs, pkgs, ...}:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ll = "ls -lh";
      ".." = "cd ..";
      neof = "neofetch";
      hmsw = "home-manager switch";
      nrsw = "nixos-rebuild switch";
    };
    shellInit = ''
      set EDITOR vim
      set BROWSER chromium
      fish_vi_key_bindings
      '';
    functions = {
      __fish_command_not_found_handler = {
        body = ''
          echo "error: unknown command ($argv[1])"
          '';
        onEvent = "fish_command_not_found";
      };
      fish_greeting = {
        body = ''
          echo "よこそう"
          '';
      };
    };
  };
}
