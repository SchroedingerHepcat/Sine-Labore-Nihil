#! /bin/bash
xrandr --output DFP1 \
       --preferred \
       --pos 1080x0 \
       --rotate normal \
       --mode 3440x1440 \
       --output DFP7 \
       --left-of DFP1 \
       --rotate left \
       --mode 1920x1080 \
       --output DFP6 \
       --right-of DFP1 \
       --rotate right \
       --mode 1920x1080
