#!/bin/sh

run() {
	if ! pgrep -f "$1"; then
		"$@" &
	fi
}

run "nm-applet"
run "volumeicon"
run "picom"
xautolock -time 7 -locker i3lock &
