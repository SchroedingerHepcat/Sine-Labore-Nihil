#! /bin/bash

xrandr --output DP-1 --pos 2560x1440 --auto --primary \
       --output HDMI-1      --pos 0x1440    --auto           \
       --output DP-2 --pos 5120x1440 --auto           \
       --output DP-4 --pos 200x360   --auto           \
       --output DP-6      --pos 2120x0    --auto           \
       --output DP-7        --pos 5560x360  --auto
