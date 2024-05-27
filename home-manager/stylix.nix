{ config, pkgs, inputs, ... }: 

{
    home.packages = with pkgs; [
        rose-pine-icon-theme
        rose-pine-cursor
        cantarell-fonts
        (nerdfonts.override { fonts = [ "SourceCodePro" "FiraCode" "FiraMono" "Hack"];})
    ];

    gtk = {
      iconTheme.package = pkgs.rose-pine-icon-theme;
      iconTheme.name = "rose-pine-moon";
    };

    stylix = {
        autoEnable = true;

        image = ./extra/wallpapers/airy_scenery.jpg;
        base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-moon.yaml";

        cursor = {
            package = pkgs.rose-pine-cursor;
            name = "BreezeX-RosePineDawn-Linux";
            size = 32;
        };

        fonts = {
            serif = config.stylix.fonts.sansSerif;
            sansSerif = {
                package = pkgs.cantarell-fonts;
                name = "Cantarell";
            };

            monospace = {
                package = (pkgs.nerdfonts.override { fonts = [ "SourceCodePro" "FiraCode" "FiraMono" "Hack"];});
                name = "SauceCodePro NFM";
            };

            sizes = {
                terminal = 14;
            };
        };

        opacity = {
            applications = 0.85;
            desktop = 0.85;
            popups = 0.95;
            terminal = 0.85;
        };
    };

    stylix.targets = {
        firefox.enable = false;
        hyprland.enable = false;
        mako.enable = false;
        nixvim.transparent_bg.main = true;
        gtk.enable = false;
        kde.enable = false;
    };
}
