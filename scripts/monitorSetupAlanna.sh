#! /bin/bash

xrandr --output DisplayPort-3 --pos 2560x1440 --auto --primary \
       --output HDMI-A-1      --pos 0x1440    --auto           \
       --output DisplayPort-4 --pos 5120x1440 --auto           \
       --output DisplayPort-5 --pos 200x360   --auto           \
       --output HDMI-1-1      --pos 2120x0    --auto           \
       --output DP-1-1        --pos 5560x360  --auto
