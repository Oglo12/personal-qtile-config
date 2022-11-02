#!/bin/bash

chosen=$(echo -e "   Power Off\n   Restart\n   Lock\n   Log Out" | rofi -dmenu -i -p "Power Menu:")

if [[ $chosen = "   Power Off" ]]; then
	poweroff
elif [[ $chosen = "   Restart" ]]; then
	reboot
elif [[ $chosen = "   Lock" ]]; then
	betterlockscreen -l
elif [[ $chosen = "   Log Out" ]]; then
	pkill -KILL -u $USER
fi
