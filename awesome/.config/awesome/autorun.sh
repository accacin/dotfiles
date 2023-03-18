#!/bin/sh

run() {
	if ! pgrep -f "$1"; then
		"$@" &
	fi
}

run "/usr/libexec/polkit-gnome-authentication-agent-1"
# run "feh" --randomize --recursive --bg-fill ~/Pictures/Wallpapers/ &
run "picom" -b
run xautolock -time 10 -locker /home/dan/.config/awesome/lock.sh
