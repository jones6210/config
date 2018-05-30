#!/bin/bash

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-3/status)

echo "$HDMI_STATUS"

if [ "connected" == "$HDMI_STATUS" ]; then
     xrandr --output eDP1 --mode 2880x1800_60.00 --pos 3264x36 --output HDMI3 --auto --scale 1.7x1.7
	 --pos 0x0 --fb 6144x1836 --dpi 200

else
    xrandr --output HDMI3 --off --dpi 200
    feh --bg-scale ~/Images/sunset_winter_railway_2880x1800.jpg
fi

