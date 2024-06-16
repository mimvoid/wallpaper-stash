{ pkgs, ... }:

{
  home.packages = [ pkgs.firefoxpwa ];
  
  programs.firefox = {
    enable = true;
    package = pkgs.unstable.firefox-beta;
    nativeMessagingHosts.packages = [ pkgs.firefoxpwa ];
    policies = {
      DisableAppUpdate = true;
      PasswordManagerEnabled = false;
      NoDefaultBookmarks = true;
      DontCheckDefaultBrowser = true;
      DisableTelemetry = true;
    };
  };
}
