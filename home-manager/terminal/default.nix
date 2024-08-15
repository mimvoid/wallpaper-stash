{ pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./git.nix
    ./foot.nix
    ./navi/navi.nix
    ./yazi.nix
    #./ncmpcpp.nix
  ];

  home.packages = with pkgs; [
    xterm

    unstable.impala
    bluetuith

    gotop
    unstable.dooit
    
    neocities-cli
    nodePackages.browser-sync

    (callPackage ../../packages/arttime.nix {})
  ];

  # Theming-specific config is in ../theming.nix
  xresources.properties = {
    "XTerm.termName" = "xterm-256color";
    "XTerm*locale" = true;
    "XTerm*saveLines" = 2048;
    "XTerm*metaSendsEscape" = true;
    "XTerm*selectToClipboard" = true;
    "XTerm*translations" = ''#override \n\
      Ctrl Shift <Key>C: copy-selection(CLIPBOARD) \n\
      Ctrl Shift <Key>V: insert-selection(CLIPBOARD)
    '';
    "XTerm*internalBorder" = 16; # padding
  };
}
