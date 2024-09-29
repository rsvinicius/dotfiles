#!/bin/sh

# Update and upgrade system
sudo pacman -Syu

# Terminal utilities
sudo pacman -S neofetch alacritty micro ranger htop

# Install Xorg, Bspwm and essentials
sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xsetroot xorg-xinput picom bspwm polybar sxhkd nitrogen rofi dunst lxappearance-gtk3 gnome-themes-extra redshift

# File manager
sudo pacman -S thunar thunar-archive-plugin thunar-volman

# Sound Packages
sudo pacman -S wireplumber pipewire pipewire-audio pipewire-alsa pipewire-pulse pipewire-jack pavucontrol pamixer playerctl qjackctl
systemctl --user enable pipewire
systemctl --user start pipewire
systemctl --user enable wireplumber
systemctl --user start wireplumber
systemctl --user enable pipewire-pulse
systemctl --user start pipewire-pulse

sudo yay -S coppwr


# Nvidia Proprietary Drivers (Works for Turing)
sudo pacman -S nvidia nvidia-utils nvidia-settings

# Bluetooth
sudo pacman -S bluez bluez-utils blueman
sudo systemctl enable bluetooth

# Fonts and icons
sudo pacman -S ttf-font-awesome noto-fonts ttf-roboto ttf-firacode-nerd ttf-liberation nerd-fonts-jetbrains-mono

# Protocols
sudo pacman -S avahi gvfs dosfstools libnotify amd-ucode
sudo systemctl enable avahi-daemon

# Security
sudo pacman -S nftables ufw

# Programs
sudo pacman -S flameshot chromium code firefox discord unzip zip

