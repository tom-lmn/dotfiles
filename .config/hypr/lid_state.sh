#!/usr/bin/env bash

LID=$(cat /proc/acpi/button/lid/*/state)

if echo "$LID" | grep -q closed; then
  hyprctl keyword monitor eDP-1,disable
else
	hyprctl keyword monitor eDP-1,enable
  hyprctl keyword monitor eDP-1,preferred,auto,2
	# Wait a split second for Hyprland to initialize the display
  sleep 0.5
  # Option A: Send a SIGUSR2 to Waybar (tells it to reload config/outputs)
  pkill -USR2 waybar || waybar &
fi

