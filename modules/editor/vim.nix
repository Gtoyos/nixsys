#Vim home-manager configuration

{ config, pkgs, ... }:

{
    programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
        ctrlp
        ack-vim
        nerdtree
        easymotion
        fugitive
    ];
    settings = {
        number = true;
        relativenumber = true;
        hidden = true;
        smartcase = true;
        mouse = "a";
    };
    extraConfig = ''

        set nocompatible 
        syntax on 
        set incsearch 
        nmap Q <Nop> 
        set shortmess+=I 
        set laststatus=2 
        set backspace=indent,eol,start 
        set incsearch 
        set noerrorbells visualbell t_vb= 

        '';
    };
}
