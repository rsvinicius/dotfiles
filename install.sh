#!/bin/sh

# Update and upgrade system
sudo pacman -Syu

# Terminal utilities
sudo pacman -S neofetch alacritty micro ranger htop

# Install Xorg, Bspwm and essentials
sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xsetroot picom bspwm sxhkd nitrogen rofi lxappearance-gtk3 gnome-themes-extra

# File manager
sudo pacman -S thunar thunar-archive-plugin thunar-volman

# Sound Packages
sudo pacman -S pamixer playerctl

# Nvidia Proprietary Drivers (Works for Turing)
sudo pacman -S nvidia nvidia-utils nvidia-settings nvidia-open

# Bluetooth 
sudo pacman -S bluez bluez-utils blueman
sudo systemctl enable bluetooth

# Fonts and icons
sudo pacman -S ttf-font-awesome noto-fonts ttf-roboto ttf-firacode-nerd

# Protocols
sudo pacman -S avahi gvfs dosfstools libnotify
sudo systemctl enable avahi-daemon

# Others
sudo pacman -S flameshot chromium firefox

# Btrfs only
sudo pacman -S snapper