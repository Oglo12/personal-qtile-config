#!/bin/bash

poweroff_text="   Power Off"
reboot_text="   Restart"
lock_text="   Lock"
logout_text="   Log Out"

chosen=$(echo -e "$poweroff_text\n$reboot_text\n$lock_text\n$logout_text" | rofi -dmenu -i -p "Power Menu:")

if [[ $chosen = $poweroff_text ]]; then
	poweroff
elif [[ $chosen = $reboot_text ]]; then
	reboot
elif [[ $chosen = $lock_text ]]; then
	betterlockscreen -l
elif [[ $chosen = $logout_text ]]; then
	pkill -KILL -u $USER
fi
