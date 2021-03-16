# Home-manager development packages declaration

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Debugging & packing
    valgrind rr gdb pwndbg egypt shellcheck linuxPackages.perf gnumake

    # Compilers & Interpreters
    python3 gcc racket jdk

    # Dependencies
    tk openssl python37Packages.numpy


  ];
}
