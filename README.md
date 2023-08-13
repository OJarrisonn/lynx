# Lynx
Lynx is my dev setup built on top of Debian

- Distro: [Debian 12](https://www.debian.org/distrib/)
- Package Manager: [nix](https://nixos.org/)
- WM: [i3wm](https://i3wm.org/)
- DM: [ly](https://github.com/fairyglade/ly)
- Status Bar: [polybar](https://polybar.github.io/)
- Notifications: [dunst](https://dunst-project.org/)
- Launcher: rofi
- Shell: [zsh](https://www.zsh.org/)
- Editor: [VS Code](https://code.visualstudio.com/)
- File Manager: [Thunar](https://docs.xfce.org/xfce/thunar/start)
- CLI Editor: [Lunar VIM](https://www.lunarvim.org/)
- CLI File Manager: [Ranger](https://ranger.github.io/)
- Zsh theme: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- Font: [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- Browser: Firefox
- Terminal Emulator: Alacritty
- PDF-Viewer: Zathura
- Wallpaper: feh

Additional Packages:
[rustup](https://rustup.rs/), [ghcup](https://www.haskell.org/ghcup/), gcc, g++, make, cmake, git, python3, pip, docker, nodejs

Cargo Packages: exa, bat

Pip Packages: conan

Possibilities:
- [eww](https://elkowar.github.io/eww/) (widgets)
- [pywal](https://github.com/dylanaraps/pywal) (color scheme)

## Install
Clone this repo and run ```./install.sh```.

## Post-Install
**TODO: Inclu my .zshrc file**
Lynx installs zsh with powerlevel10k, just change your shell by running:

```console
$ chsh -s /usr/bin/zsh your_user
```