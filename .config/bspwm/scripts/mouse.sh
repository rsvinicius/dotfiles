#!/bin/bash

# necessary tools -> sudo pacman -S xorg-xinput libinput

# Device name from xinput list
# DEVICE_NAME="Compx Fantech Helios Pro Wireless XD3v2"
DEVICE_NAME="Helios II PRO Mouse"
# DEVICE_NAME="compx Fantech Helios II PRO"

# Get all matching device IDs excluding keyboards
DEVICE_IDS=$(xinput list | grep "$DEVICE_NAME" | grep -v "Keyboard" | grep -o 'id=[0-9]*' | grep -o '[0-9]*')

# Iterate over each device ID and set the properties
for DEVICE_ID in $DEVICE_IDS; do
    echo "Setting properties for Device ID: $DEVICE_ID"
    
    # Print the device properties for debugging
    xinput list-props $DEVICE_ID
    
    # Set properties and check for success
    xinput --set-prop $DEVICE_ID "libinput Accel Profile Enabled" 1 0
    if [ $? -eq 0 ]; then
        echo "Successfully set Accel Profile Enabled"
    else
        echo "Failed to set Accel Profile Enabled"
    fi

    xinput --set-prop $DEVICE_ID "libinput Accel Speed" --type=float -1.0
    if [ $? -eq 0 ]; then
        echo "Successfully set Accel Speed"
    else
        echo "Failed to set Accel Speed"
    fi

    xinput --set-prop $DEVICE_ID "libinput Natural Scrolling Enabled" 0
    if [ $? -eq 0 ]; then
        echo "Successfully set Natural Scrolling Enabled"
    else
        echo "Failed to set Natural Scrolling Enabled"
    fi
done
