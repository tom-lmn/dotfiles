#!/usr/bin/env bash

LID=$(cat /proc/acpi/button/lid/*/state)

if echo "$LID" | grep -q closed; then
  hyprctl keyword monitor eDP-1,disable
else
	hyprctl keyword monitor eDP-1,enable
  hyprctl keyword monitor eDP-1,preferred,auto,2
fi

