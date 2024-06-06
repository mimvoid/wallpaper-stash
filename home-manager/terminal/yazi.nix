{ pkgs, ... }:

{
    home.packages = with pkgs; [
        ffmpegthumbnailer
        poppler
        unar
        wl-clipboard

        dooit
        wttrbar
        wego
    ];

    programs.yazi = {
        enable = true;
        package = pkgs.yazi;
        enableBashIntegration = true;
        settings.manager = {
            show_hidden = true;
            sort_by = "natural";
            sort_dir_first = true;
        };
    };
}
