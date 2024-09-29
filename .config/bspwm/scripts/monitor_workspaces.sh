#!/bin/bash

# Detect connected monitors
connected_monitors=$(xrandr -q | grep ' connected' | awk '{ print $1 }')

# Function to configure monitors and workspaces
configure_monitors() {
  primary_monitor=$1
  secondary_monitor=$2

  if [[ -n $primary_monitor ]]; then
    xrandr --output "$primary_monitor" --primary --mode 1920x1080 --rotate normal
  fi

  if [[ -n $secondary_monitor ]]; then
    xrandr --output "$secondary_monitor" --mode 1920x1080 --rotate normal --left-of "$primary_monitor"
  fi

  # Set workspaces
  bspc wm -O "$primary_monitor" "$secondary_monitor"
  bspc monitor "$primary_monitor" -d 1 2 3 4
  bspc monitor "$secondary_monitor" -d 5 6 7 8
}

# Check if HDMI-0 is connected
if echo "$connected_monitors" | grep -q 'HDMI-0'; then
  primary_monitor="HDMI-0"
  # Determine secondary monitor, if any
  secondary_monitor=$(echo "$connected_monitors" | grep -v 'HDMI-0' | sed -n '1p')
else
  # If HDMI-0 is not connected, choose the first available monitor as primary
  primary_monitor=$(echo "$connected_monitors" | sed -n '1p')
  # Determine secondary monitor, if any
  secondary_monitor=$(echo "$connected_monitors" | sed -n '2p')
fi

# Configure the monitors
configure_monitors "$primary_monitor" "$secondary_monitor"
