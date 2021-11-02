#!/bin/bash

feh --bg-scale /home/sy/Pictures/Wallpapers/black.jpeg
killall polybar
sh /home/sy/.config/polybar/launch.sh
bspc wm -O DP-2 HDMI-0

while [ 1 = 1 ]
do
	bspc subscribe -c 1 monitor_geometry
	for monitor in $( xrandr | grep 'disconnected' | awk '{print $1}' )
	do
		xrandr --output $monitor --off
		feh --bg-scale /home/sy/Pictures/Wallpapers/black.jpeg
		killall polybar
		sh /home/sy/.config/polybar/launch.sh
        bspc wm -O DP-2 HDMI-0
        

	done
	for monitor in $( xrandr | grep 'connected' | awk '{print $1}' )
	do
		xrandr --output $monitor --left-of 'DP-2' --auto
		echo $monitor
		feh --bg-scale /home/sy/Pictures/Wallpapers/black.jpeg
		killall polybar
		sh /home/sy/.config/polybar/launch.sh
		bspc wm -O DP-2 HDMI-0
        bspc monitor HDMI-0 -d V VI VII VIII

	done
done
