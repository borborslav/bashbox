#!/bin/bash

xrandr --output HDMI-A-0 --mode 1920x1200 --auto --pos 0x0
xrandr --output HDMI-A-1 --mode 1920x1200 --auto --pos 1920x0 --primary
xrandr --output DisplayPort-5 --mode 1920x1200 --auto --pos 3840x0
xrandr --output DisplayPort-6 --mode 1920x1080 --auto --pos 5760x0


#xrandr --output HDMI-1 --mode 1920x1080 --auto --pos 0x0
#xrandr --output DP-1-1 --mode 1920x1080 --auto --pos 1920x0
#xrandr --output DP-1-2 --off
#xrandr --output DP-1-3 --mode 1920x1080 --auto --pos 3840x0

