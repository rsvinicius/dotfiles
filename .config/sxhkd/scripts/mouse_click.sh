#!/bin/bash

# Function to move and click the mouse
move_and_click() {
    local center_x=$1
    local center_y=$2
    local radius=$3
    local delay=$4

    # Calculate random offsets within the specified radius
    local offset_x=$(( RANDOM % (radius * 2 + 1) - radius ))
    local offset_y=$(( RANDOM % (radius * 2 + 1) - radius ))

    # Calculate final coordinates
    local click_x=$(( center_x + offset_x ))
    local click_y=$(( center_y + offset_y ))

    # Move the mouse to the calculated coordinates
    xdotool mousemove $click_x $click_y

    # Wait for the specified delay
    # sleep $delay

    # Perform a left click
    xdotool click 1
}

# Function to check if Caps Lock is on
is_capslock_on() {
    xset q | grep -q "Caps Lock: *on"
}

# Coordinates for the center of the click area -> xdotool getmouselocation
center_x=3085
center_y=202

# Radius of the click area (adjust as needed)
radius=5

# Delay between actions in seconds (can be fractional, e.g., 0.5 for half a second)
DELAY=0.5


# Check if Caps Lock is on and perform the clicks if it is
if is_capslock_on; then
move_and_click $center_x $center_y $radius $DELAY
else
    echo "Caps Lock is off. No actions performed."
fi



