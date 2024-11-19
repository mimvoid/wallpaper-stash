{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wl-clipboard-rs
    hyprpicker
    hyprshot
    swww
  ];

  imports = [
    ./hyprland.nix
    ./hypr-theme.nix
    ./hypridle.nix
    ./hyprlock.nix
    ./fuzzel.nix
    ./wlsunset.nix
  ];
}
