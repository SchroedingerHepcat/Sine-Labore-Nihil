#!/bin/sh
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 2560x1440 --rotate normal \
       --output DisplayPort-1 --mode 2560x1440 --pos 5120x1440 --rotate normal \
       --output DisplayPort-2 --off \
       --output HDMI-A-0 --mode 2560x1440 --pos 0x1440 --rotate normal \
       --output DisplayPort-3 --mode 1920x1080 --pos 640x360 --rotate normal \
       --output DisplayPort-4 --off \
       --output DisplayPort-5 --mode 2560x1440 --pos 2560x0 --rotate normal \
       --output DisplayPort-6 --off \
       --output DisplayPort-7 --mode 1920x1080 --pos 5120x360 --rotate normal \
       --output DisplayPort-8 --off
