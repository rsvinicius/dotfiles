#!/bin/bash

# Check the current state
if xmodmap -pk | grep -q '41.*Shift_L'; then
    # If currently remapped to Shift, reset to f
    xmodmap -e "keycode 41 = f"
    echo "Remapped 'f' key back to 'f'"
else
    # Otherwise, remap f to Shift
    xmodmap -e "keycode 41 = Shift_L"
    echo "Remapped 'f' key to 'Shift'"
fi
