<h1 align="center">mimvoid's nixos & home manager dotfiles</h1>

<p align="center">This is where I keep my configuration files, links to helpful resources, and some pieces of advice from my experience with NixOS.</p>

#### Hyprland

![Screenshot: Hyprland with disfetch and eza][i1]

![Screenshot: dooit with Amberol music player and Thunar file manager][i2]

![Screenshot: Anime-style sunset wallpaper with a notification saying obama: then perish][i3]

#### XFCE

![Screenshot: XFCE with disfetch][i4]

My Firefox CSS: [panefox][1]

My wallpapers and credits: [wallpaper-stash][2]

[i1]: assets/2024-07-14_hyprland-1.png
[i2]: assets/2024-07-14_hyprland-2.png
[i3]: assets/2024-07-14_hyprland-3.png
[i4]: assets/2024-07-09_xfce.png
[1]: https://github.com/mimvoid/panefox
[2]: https://github.com/mimvoid/wallpaper-stash

# What I Use

Desktop Environments & Window Managers

- [Hyprland][w1]
- [XFCE][w2] with [xfwm][w3] & [cortile][w4]

Login Manager: [greetd][w5] with [tuigreet][w6]

[w1]: https://hyprland.org
[w2]: https://xfce.org
[w3]: https://docs.xfce.org/xfce/xfwm4/start
[w4]: https://github.com/leukipp/cortile
[w5]: https://sr.ht/~kennylevinsen/greetd/
[w6]: https://github.com/apognu/tuigreet

| Applications     |                             |
| ---------------- | --------------------------- |
| Terminal         | [kitty][a1]                 |
| Editor           | [Neovim][a2] ([NixVim][a3]) |
| GUI file manager | [Thunar][a4]                |
| TUI file manager | [yazi][a5]                  |
| Web browser      | [Firefox][a6]               |
| Art program      | [Krita][a7]                 |
| Document viewer  | [Zathura][a8]               |
| To-do list       | [dooit][a9]                 |
| Music player     | [Tauon][a10]                |

[a1]: https://sw.kovidgoyal.net/kitty
[a2]: https://neovim.io
[a3]: https://github.com/nix-community/nixvim
[a4]: https://docs.xfce.org/xfce/thunar/start
[a5]: https://github.com/sxyazi/yazi
[a6]: https://firefox.com
[a7]: https://krita.org
[a8]: https://git.pwmt.org/pwmt/zathura
[a9]: https://github.com/kraanzu/dooit
[a10]: https://tauonmusicbox.rocks

| Hyprland-specific  |                                   |
| ------------------ | --------------------------------- |
| Idle               | [hypridle][h1]                    |
| Lockscreen         | [hyprlock][h1]                    |
| Bar                | [AGS][h2]                         |
| Notifications      | [AGS][h2] ([mako][h3]-like style) |
| Launcher           | [fuzzel][h4]                      |
| Logout menu        | [wlogout][h5]                     |
| Wallpaper          | [swww][h6]                        |
| Screen temperature | [wlsunset][h7]                    |
| Screenshot         | [hyprshot][h8]                    |
| Color picker       | [hyprpicker][h9]                  |

[h1]: https://wiki.hyprland.org/Hypr-Ecosystem
[h2]: https://github.com/Aylur/ags
[h3]: https://github.com/emersion/mako
[h4]: https://codeberg.org/dnkl/fuzzel
[h5]: https://github.com/ArtsyMacaw/wlogout
[h6]: https://github.com/LGFae/swww
[h7]: https://sr.ht/~kennylevinsen/wlsunset
[h8]: https://github.com/Gustash/hyprshot
[h9]: https://github.com/hyprwm/hyprpicker

| Theming         |                                             |
| --------------- | ------------------------------------------- |
| GTK theme       | [Rose Pine Moon][t1]                        |
| Cursor          | [Rose Pine Dawn cursor][t2]                 |
| Icons           | [Papirus][t3] with [Catppuccin folders][t4] |
| Sans serif font | [Karla][t5]                                 |
| Monospace font  | [Hasklug Nerd Font][t6] ([Hasklig][t7])     |
| Display font    | [Limelight][t8]                             |

[t1]: https://github.com/rose-pine/gtk
[t2]: https://github.com/rose-pine/cursor
[t3]: https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
[t4]: https://github.com/catppuccin/papirus-folders
[t5]: https://github.com/googlefonts/karla
[t6]: https://www.nerdfonts.com
[t7]: https://github.com/i-tu/Hasklig
[t8]: https://fonts.google.com/specimen/Limelight

- AGS widgets
  - [Adwaita icons][e1]
  - Bar
  - Calendar
  - Notifications
- Krita
  - Themes
    - [Catppuccin Macchiato & Mocha Maroon][e2]
  - Brushes & Resources
    - [Dirty Chalk for Children][e3]
    - [Hollow brush][e4]
    - [SK Sketching][e5]
    - [Rakurri Gradient Map Set][e6]
  - Plugins
    - [Composition Helper][e7]
    - [Reference Tabs Docker][e8]
    - [Timer Watch][e9]
- [Obsidian.md][e10] CSS snippets
- Firefox themes & extensions
  - Custom themes: Incandescent (light) & Moonflower (dark)
  - [Catppuccin Macchiato - Maroon][e11]
  - Vertical tabs: [Sidebery][e12]

[e1]: https://gitlab.gnome.org/GNOME/adwaita-icon-theme
[e2]: https://github.com/catppuccin/kde
[e3]: https://krita-artists.org/t/dirty-chalk-for-children-free/39643
[e4]: https://krita-artists.org/t/i-made-a-hollow-brush/92064
[e5]: https://krita-artists.org/t/sk-sketching-in-krita-v1/45795
[e6]: https://krita-artists.org/t/rakurri-gradient-map-set-free-gradient-maps/33381
[e7]: https://github.com/Grum999/CompositionHelper
[e8]: https://invent.kde.org/freyalupen/reference-tabs-docker
[e9]: https://github.com/EyeOdin/timer_watch
[e10]: https://obsidian.md
[e11]: https://github.com/catppuccin/firefox
[e12]: https://addons.mozilla.org/en-US/firefox/addon/sidebery

### Extra Cool Stuff

These are things I used that ended up not entirely fitting my use-case, but they're wonderful nonetheless and I totally respect and recommend them!

- [Foot](https://codeberg.org/dnkl/foot), lightweight terminal emulator for Wayland

# Resources

### Nix & NixOS Sources

Official:

- [NixOS website][n1]
- [Nix package manager & NixOS download][n2]
  - The Nix package manager has many choices, especially on the unstable channel.
  - However, I'd advise against it if you really want to get into Nix's declarative nature. Unless you just want a good package manager, then go ahead.
- [Nix ecosystem documentation][n3]
  - [Nix language guide][n4]
- [NixOS wiki][n5]
- [Search Nix packages][n6]
- [Search NixOS options][n7]

Unofficial:

- [Awesome Nix][n8]
- [NixOS & Flakes Book][n9]
  - [Very helpful guide to Nix flakes][n10]
    - Nix flakes may seem daunting at first, but they make it super easy to add extra sources and configuration options. Plus, they're declarative while nix channels are not.
- [Nix User Repository][n11]
- [User-maintained NixOS wiki][n12]
  - [Nix applications and ecosystem][n13]
- [Remember to optimize your NixOS storage][n14]

[n1]: https://nixos.org
[n2]: https://nixos.org/download
[n3]: https://nix.dev
[n4]: https://nix.dev/tutorials/nix-language
[n5]: https://wiki.nixos.org/wiki/NixOS_Wiki
[n6]: https://search.nixos.org/packages
[n7]: https://search.nixos.org/options
[n8]: https://github.com/nix-community/awesome-nix
[n9]: https://nixos-and-flakes.thiscute.world
[n10]: https://nixos-and-flakes.thiscute.world/nixos-with-flakes/introduction-to-flakes
[n11]: https://nur.nix-community.org
[n12]: https://nixos.wiki
[n13]: https://nixos.wiki/wiki/Applications
[n14]: https://www.reddit.com/r/NixOS/comments/1cunvdw/friendly_reminder_optimizestore_is_not_on_by

### Home Manager

A declarative approach to configuring your user environment! It's very much like NixOS's configuration file, but just for the home directory. It's great if you want to tinker without adding a bunch of generations to your boot menu, or use different configurations for users on the same system.

It can work on other distros too—I tried it on openSUSE Tumbleweed, though not long-term.

- [Home Manager][hm1]
- [Home Manager manual][hm2]
- [Home Manager configuration options manual][hm3]
- [Search Home Manager options][hm4]

[hm1]: https://github.com/nix-community/home-manager
[hm2]: https://nix-community.github.io/home-manager
[hm3]: https://nix-community.github.io/home-manager/options.xhtml
[hm4]: https://home-manager-options.extranix.com

### Extras

The NixOS configuration file and Home Manager are what I mainly use, but here are some other interesting tools.

- [nh][em1], a pretty wrapper & helper for Nix and Home Manager
- [NixVim][em2], for configuring Neovim and its plugins declaratively
  - [NixVim documentation][em3]
- [nix-flatpak][em4], for managing Flatpaks declaratively
- [Stylix][em5], for quick universal colorschemes and fonts
  - [Stylix documentation][em6]
- [Nix-colors][em7], for managing color palettes
- [Nix-rice][em8], for managing color palettes
- [Plasma-manager][em9], for configuring KDE Plasma declaratively
- [System Manager][em10], for managing system configuration with Nix

[em1]: https://github.com/viperML/nh
[em2]: https://github.com/nix-community/nixvim
[em3]: https://nix-community.github.io/nixvim/
[em4]: https://github.com/gmodena/nix-flatpak
[em5]: https://github.com/danth/stylix
[em6]: https://danth.github.io/stylix/options/nixos.html
[em7]: https://docs.xfce.org/xfce/xfwm4/start
[em8]: https://github.com/bertof/nix-rice/
[em9]: https://github.com/pjones/plasma-manager
[em10]: https://github.com/numtide/system-manager

# Pieces of Advice

- Use `nix path-info nixpkgs#<package-name>` if at all possible
  - Trust me, it is _not_ fun to manually search through nix/store/ to find the path to a specific package file.
  - The sooner you're aware of this, the better!
- If you choose to start with a starter config, start small!
  - You can understand a lot by configuring things yourself, and configs that are too complex may confuse you out of touching them.
  - If you really want a config without the manual effort, NixOS is probably not for you.
- It's absolutely true that NixOS documentation is sparse.
  - If you really want to dig deep, don't be afraid to look through the source code or the manuals.
  - You can do a ton on NixOS, but it takes time, effort, and undoubtly frustration.
- You don't need to rely on the options NixOS and Home Manager give you to create config files
  - NixOS has `environment.etc."path/file.type"`, meaning etc/path/file.type
  - Home Manager has `home.file."path/file.type"`, meaning home/user/path/file.type, and `xdg.configFile."path/file.type"`, meaning ~/.config/path/file.type!
  - Optionally, you can use `"path/file.type".source = config.lib.file.mkOutOfStoreSymlink /absolute/path/to/source/file` to symlink an existing file to the location you want
  - Or create your own modules.
- NixOS works very differently to other Linux distros, but that's why I enjoy it!
