{ ... }:

{
  home = {
    username = "zinnia";
    homeDirectory = "/home/zinnia";
    stateVersion = "23.11";
  };
    
  programs.home-manager.enable = true;

  imports = [
    ./theming.nix
    ./terminal/default.nix
    ./nixvim/default.nix
    ./hyprland/default.nix
    ./guis/default.nix
    ./eww/eww.nix
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };
}
