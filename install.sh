#!/bin/sh

# Update and upgrade system
sudo pacman -Syu

# User directories
sudo pacman -S xdg-user-dirs
xdg-user-dirs-update

# Terminal utilities
sudo pacman -S neofetch alacritty micro ranger htop

# Install Xorg, Bspwm and essentials
sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xsetroot picom bspwm polybar sxhkd nitrogen rofi lxappearance-gtk3 gnome-themes-extra gnome-icon-theme

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
sudo pacman -S nerd-fonts ttf-font-awesome noto-fonts ttf-roboto ttf-firacode-nerd ttf-liberation
-S nerd-fonts-jetbrains-mono

# Protocols
sudo pacman -S avahi gvfs dosfstools libnotify amd-ucode
sudo systemctl enable avahi-daemon

# Security
sudo pacman -S nftables ufw

# Programs
sudo pacman -S flameshot chromium firefox discord unzip zip

