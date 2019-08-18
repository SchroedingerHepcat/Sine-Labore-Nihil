#!/bin/bash

direction=$(echo "$1" | tr '[:upper:]' '[:lower:]')
activeWindowId=$(xdotool getactivewindow)
activeWindowName=$(xdotool getwindowname $activeWindowId)
echo $activeWindowName >> /tmp/log

if (echo $activeWindowName| grep GVIM 2>&1 >/dev/null); then
    case $direction in 
        left)
            xdotool keydown super F1 keyup F1 super
            ;;
        down)
            xdotool keydown super F2 keyup F2 super
            ;;
        up)
            xdotool keydown super F3 keyup F3 super
            ;;
        right)
            xdotool keydown super F4 keyup F4 super
            ;;
    esac
#elif (echo $activeWindowName| grep urxvt 2>&1 >/dev/null); then
#    case $direction in 
#        left)
#            xdotool keydown Alt_L key F1 keyup Alt_L
#            ;;
#        down)
#            xdotool keydown Alt_L key F2 keyup Alt_L
#            ;;
#        up)
#            xdotool keydown Alt_L key F3 keyup Alt_L
#            ;;
#        right)
#            xdotool keydown Alt_L key F4 keyup Alt_L
#            ;;
#    esac
else
    i3-msg focus $direction
fi
