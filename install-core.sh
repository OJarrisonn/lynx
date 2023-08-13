#!/bin/bash

cd $HOME

# TODO: Why the X isn't working
# TODO: Config: zsh, i3, polybar, rofi, dunst, alacritty, ranger, neofetch

sudo apt install build-essential libpam0g-dev libxcb-xkb-dev curl

# Installing Nix
sh <(curl -L https://nixos.org/nix/install) --daemon