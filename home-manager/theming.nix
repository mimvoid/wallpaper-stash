{ pkgs, ... }:
let
  # Wallpaper
  homescreen = ../wallpapers/hanyijie_departure.jpg;

  # Default fonts
  serif = sansSerif;
  sansSerif = {
    package = pkgs.cantarell-fonts;
    name = "Cantarell";
  };
  monospace = {
    package = (pkgs.nerdfonts.override { fonts = [ "SourceCodePro" ];});
    name = "SauceCodePro NFM";
  };
in
{
  home.packages = with pkgs; [
    # Icons
    catppuccin-papirus-folders
    rose-pine-cursor

    # Fonts
    # Sans serif
    cantarell-fonts
    noto-fonts-cjk-sans
    atkinson-hyperlegible
    raleway
    carlito

    # Serif
    noto-fonts-cjk-serif

    # Monospace
    (nerdfonts.override {fonts = ["SourceCodePro"];})
    courier-prime

    # Display / Handwriting
    (google-fonts.override {fonts = [
      "Limelight-Regular"
      "Oswald[wght]"
      "MajorMonoDisplay-Regular"
      "MaShanZheng-Regular"
    ]; })
    norwester-font
    lxgw-wenkai
  ];

  # Stylix is nice in the terminal
  # but I don't usually like how it works
  # outside it so auto-enable is off

  stylix = {
    autoEnable = false;

    image = homescreen;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-moon.yaml";

    fonts = {
      inherit serif;
      inherit sansSerif;
      inherit monospace;
      sizes.terminal = 14;
    };

    cursor = {
      name = "BreezeX-RosePineDawn-Linux";
      package = pkgs.rose-pine-cursor;
      size = 24;
    };

    opacity.popups = 0.95;
    opacity.terminal = 0.85;
  };

  stylix.targets = {
    bat.enable = true;
    foot.enable = true;
    fzf.enable = true;
    yazi.enable = true;
    zathura.enable = true;
  };

  gtk = {
    enable = true;
    font = sansSerif;
    iconTheme = {
      name = "Papirus";
      package = pkgs.catppuccin-papirus-folders;
    };
    theme = {
      name = "rose-pine-moon";
      package = pkgs.rose-pine-gtk-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme = "kde";
    style.name = "breeze";
  };
}
