# Home-Manager configuration

{ configs, pkgs, ...}:

{
  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
  
  #version
  home.stateVersion = "20.03";

  imports = [
        # Modules
        ./modules/browser/chromium.nix
        ./modules/editor/vim.nix
        ./modules/shell/fish.nix
        ./modules/terminal/alacritty.nix

        ./modules/git.nix

        # Software packages
        ./modules/blocks/devel.nix
        ./modules/blocks/media.nix
        ./modules/blocks/utilities.nix
        ./modules/blocks/math.nix

  ];
}
