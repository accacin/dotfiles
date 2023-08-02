#!/bin/sh

run() {
	if ! pgrep -f "$1"; then
		"$@" &
	fi
}

run "/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1"
# run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/ &
run "picom" -b
run xautolock -time 10 -locker /home/dan/.config/awesome/lock.sh

if xrandr | grep -q 'HDMI-A-1 connected'; then
	xrandr --output HDMI-A-1 --mode 3440x1440 --rate 99.98
fi
