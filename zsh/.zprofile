#! /usr/bin/sh

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	# exec startx
  Hyprland
fi