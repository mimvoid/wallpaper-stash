# Based on Catppuccin Macchiato
# Main colors: pinks, purples, greens, blues

rec {
  string = "#cad3f5"; # text
  string-dim = "#a5adcb"; # subtext0

  box = "#363a4f"; # surface0
  box-bright = "#494d64"; # surface1
  box-dim = "#363a4f"; # surface0

  base = "#24273a"; # base
  shadow = "#1e2030"; # mantle

  primary = "#f5bde6"; # pink
  primary-bright = "#f4ccde"; # pink & rosewater
  primary-dim = "#c6a0f6"; # mauve

  secondary = "#f0c6c6"; # flamingo
  secondary-bright = "#f4dbd6"; # rosewater
  secondary-dim = "#f4c2aa"; # peach & rosewater

  tertiary = "#8aadf4"; # blue
  tertiary-bright = "#91d7e3"; # sky
  tertiary-dim = "#b7bdf8"; # lavender

  good = "#8bd5ca"; # teal
  warn = "#f5a97f"; # peach
  error = "#ee99a0"; # maroon

  alpha = {
    string = string + "ff";
    string-dim = string-dim + "ff";

    box = primary-dim + "1a"; # 10% opacity
    box-bright = primary-dim + "33"; # 20% opacity
    box-dim = primary-dim + "1a"; # 10% opacity

    base = base + "cc"; # 80% opacity
    shadow = shadow + "33"; # 25% opacity

    primary = primary + "ff";
    primary-bright = primary-bright + "ff";
    primary-dim = primary-dim + "66"; # 40% opacity

    secondary = secondary + "ff";
    secondary-bright = secondary-bright + "ff";
    secondary-dim = secondary-dim + "ff";

    tertiary = tertiary + "ff";
    tertiary-bright = tertiary-bright + "ff";
    tertiary-dim = tertiary-dim + "ff";

    good = good + "ff";
    warn = warn + "ff";
    error = error + "ff";
  };
}
