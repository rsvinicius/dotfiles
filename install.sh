#!/bin/sh

# Update and upgrade system
sudo pacman -Syu --noconfirm

# Terminal utilities
sudo pacman -S neofetch kitty micro ranger --needed --noconfirm

# App launcher
sudo pacman -S wofi --needed --noconfirm

# Install Xorg, Picom, Bspwm, and Sxhkd
sudo pacman -S xorg-server xorg-xinit picom bspwm sxhkd --needed --noconfirm

# File manager
sudo pacman -S thunar thunar-archive-plugin thunar-volman --needed --noconfirm