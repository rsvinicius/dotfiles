#!/bin/bash

# necessary tools -> sudo pacman -S xorg-xinput libinput

# Device name from xinput list
DEVICE_NAME="Compx Fantech Helios Pro Wireless XD3v2"

# Get the pointer device ID
DEVICE_ID=$(xinput list | grep "$DEVICE_NAME.*pointer" | grep -o 'id=[0-9]*' | grep -o '[0-9]*' | head -n 1)

# Check if DEVICE_ID is not empty
if [ -n "$DEVICE_ID" ]; then
    # Set properties
    xinput --set-prop $DEVICE_ID "libinput Accel Profile Enabled" 1, 0
    xinput --set-prop $DEVICE_ID "libinput Accel Speed" -1
    xinput --set-prop $DEVICE_ID "libinput Natural Scrolling Enabled" 0
else
    echo "Pointer device not found for $DEVICE_NAME"
fi
