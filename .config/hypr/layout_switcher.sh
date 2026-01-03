#!/usr/bin/env bash

ULTRAWIDE=$(hyprctl monitors -j | jq -e '
  .[] |
  select((.width / .height) > (16 / 9))
' > /dev/null && echo 1 || echo 0)

if [ "$ULTRAWIDE" = "1" ]; then
  # Ultrawide → centered master
  hyprctl keyword general:layout master
  hyprctl keyword master:orientation center
else
  # 16:9 (or narrower) → normal tiling
  hyprctl keyword general:layout dwindle
fi

