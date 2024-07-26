#!/bin/sh
xrandr --output DP-1 --primary --mode 2560x1440 --pos 2560x1440 --rotate normal \
       --output DP-2 --mode 2560x1440 --pos 5120x1440 --rotate normal \
       --output DP-3 --off \
       --output HDMI-1 --mode 2560x1440 --pos 0x1440 --rotate normal \
       --output DP-4 --mode 1920x1080 --pos 640x360 --rotate normal \
       --output DP-5 --off \
       --output DP-6 --mode 2560x1440 --pos 2560x0 --rotate normal \
       --output DP-7 --off \
       --output DP-8 --mode 1920x1080 --pos 5120x360 --rotate normal \
       --output DP-9 --off
