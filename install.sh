#!/bin/sh

# Update and upgrade system
sudo pacman -Syu --noconfirm

# Terminal utilities
sudo pacman -S neofetch alacritty kitty micro ranger --needed --noconfirm

# App launcher
sudo pacman -S wofi --needed --noconfirm

# Install Xorg, Bspwm and essentials
sudo pacman -S xorg-server xorg-xinit picom bspwm sxhkd nitrogen wofi --needed --noconfirm

# File manager
sudo pacman -S thunar thunar-archive-plugin thunar-volman --needed --noconfirm

# Sound Packages
sudo pacman -S pamixer playerctl --needed --noconfirm

# Fonts and icons
sudo pacman -S ttf-font-awesome noto-fonts ttf-roboto ttf-firacode-nerd --needed --noconfirm

# Protocols
sudo pacman -S libnotify --needed --noconfirm

# Others
sudo pacman -S flameshot chromium vscodium --needed --noconfirm