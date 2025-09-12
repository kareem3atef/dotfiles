#!/usr/bin/env bash

# remove all instances
killall -q polybar

# Enable bar for each monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=~/.config/polybar/config.ini ibar &
  done
else
  polybar --config=~/.config/polybar/config.ini ibar &
fi

echo "Bars launched..."
