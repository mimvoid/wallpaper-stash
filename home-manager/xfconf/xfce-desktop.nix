{ pkgs, config, ... }:
let
  homescreen = "${pkgs.xfce.xfdesktop}/share/backgrounds/xfce/xfce-flower.svg";
in
{
  xfconf.settings = {
    xfce4-desktop = {
      "backdrop/screen0/monitoreDP-1/workspace0/last-image" = homescreen;
      "backdrop/screen0/monitoreDP-1/workspace1/last-image" = homescreen;
      "backdrop/screen0/monitoreDP-1/workspace2/last-image" = homescreen;
      "backdrop/screen0/monitoreDP-1/workspace3/last-image" = homescreen;
      "desktop-icons/style" = 0; # No desktop icons
    };

    xsettings = {
      "Xft/DPI" = 140;
      "Xfce/LastCustomDPI" = 140;
      "Gtk/FontName" = "${config.gtk.font.name} 11";
      "Gtk/MonospaceFontName" = "${config.stylix.fonts.monospace.name} 12";
      "Gtk/CursorThemeName" = "${config.gtk.cursorTheme.name}";
      "Gtk/CursorThemeSize" = 38;
    };
  };
}
