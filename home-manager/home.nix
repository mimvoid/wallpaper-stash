{ pkgs, ... }:

{
  home = {
    username = "zinnia";
    homeDirectory = "/home/zinnia";
    stateVersion = "23.11";
  };
    
  programs.home-manager.enable = true;

  imports = [
    ./theming.nix
    ./xdg-home.nix
    ./terminal/default.nix
    ./nixvim/default.nix
    ./hyprland/default.nix
    ./xfconf/default.nix
    ./guis/default.nix
    ./ags/ags.nix
  ];

  home.packages = with pkgs; [
    wl-clipboard 
    xclip
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
