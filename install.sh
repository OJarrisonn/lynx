#!/bin/bash

cd $HOME

# TODO: Why the X isn't working
# TODO: Config: zsh, i3, polybar, rofi, dunst, alacritty, ranger, neofetch

sudo apt install --no-install-recommends curl wget ca-certificates
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev # For build ly

# Installing Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# Installing base
nix-env -iA \
    nixpkgs.pipewire \
    nixpkgs.man \
    nixpkgs.xz \


sudo apt install --no-install-recommends network-manager network-manager-gnome

# Installing dev
nix-env -iA \
    nixpkgs.git \
    nixpkgs.gnumake \
    nixpkgs.cmake \
    nixpkgs.python310 \
    nixpkgs.python310Packages.pip \
    nixpkgs.rustup \
    nixpkgs.nodejs_20 \
    nixpkgs.zsh


# Installing environment
nix-env -iA \
    nixpkgs.polybar \
    nixpkgs.rofi \
    nixpkgs.dunst \
    nixpkgs.alacritty \
    nixpkgs.gnome.gnome-control-center \
    nixpkgs.gnome.nautilus \
    nixpkgs.vscode \
    nixpkgs.firefox \
    nixpkgs.zathura \
    nixpkgs.feh

## Installing CLI tools
nix-env -iA \
    nixpkgs.vim \
    nixpkgs.neovim \
    nixpkgs.ranger \
    nixpkgs.bat \
    nixpkgs.ripgrep \
    nixpkgs.exa \
    nixpkgs.neofetch \



# Installing unbuilt
cd /tmp

## Installing i3-gaps
git clone git@github.com:maestrogerardo/i3-gaps-deb.git
cd i3-gaps-deb
./i3-gaps-deb
cd ..

## Dotfiles
#cp ./dotfiles/.zshrc $HOME/.zshrc
#cp ./dotfiles/neofetch $HOME/.config/neofetch/config.conf
#cp ./dotfiles/ranger $HOME/.config/ranger/rc.conf

## Installing Ly
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service
cd ..

## Installing JetBrainsMono Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
unzip JetBrainsMono.zip \
    JetBrainsMonoNerdFont-Regular.ttf \
    JetBrainsMonoNerdFont-Bold.ttf \
    JetBrainsMonoNerdFont-BoldItalic.ttf \
    JetBrainsMonoNerdFont-Italic.ttf \
    -d $HOME/.fonts/

## Installing powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

## Installing Lunar Vim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

## Installing ranger icons
git clone https://github.com/alexanderjeurissen/ranger_devicons $HOME/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf

cd $HOME