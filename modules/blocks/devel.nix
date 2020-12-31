# Home-manager development packages declaration

{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Debugging & packing
    rr gdb pwndbg egypt shellcheck linuxPackages.perf gnumake

    # Compilers & Interpreters
    python3 gcc racket

    # Dependencies
    openssl python37Packages.numpy
  ];
}
