{ pkgs, lib, allowed-unfree-packages, ... }:

{
  home.packages = with pkgs; [
    # Art & design
    # nixpkgs#krita seems to be broken right now

    # Documents
    pdfarranger
    zotero_7
    xarchiver

    # Contact
    zoom-us
    vesktop

    # Misc
    anki-bin
    anki-sync-server
    bottles
    amberol
    nextcloud-client
    localsend
  ];

  imports = [
    ./freetube.nix
    ./zathura.nix
  ];

  # Imports list of allowed unfree packages from flake.nix
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) allowed-unfree-packages;
}
