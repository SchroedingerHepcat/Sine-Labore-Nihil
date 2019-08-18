#! /bin/bash

export DISPLAY=:0

function _on_connect() {
   xrandr --output DP1-2 --off --output eDP1 --auto
}

function _on_disconnect() {
   xrandr --output DP1-2 --auto --scale 2x2 --output eDP1 --off
}

if (xrandr | grep "DP1-2 connected" &> /dev/null); then
   _on_connect
else
   _on_disconnect
fi
