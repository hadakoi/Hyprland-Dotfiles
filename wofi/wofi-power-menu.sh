#!/bin/bash

options="Lock 
Suspend 󰒲
Reboot 
Shutdown 
Logout 󰍃
Cancel 󰜺"

choice=$(echo -e "$options" \
    | wofi --dmenu --width 600 --prompt "Power Menu")

case "$choice" in
    "Lock ")
        hyprlock
        ;;
    "Suspend 󰒲")
        systemctl suspend
        ;;
    "Reboot ")
        systemctl reboot
        ;;
    "Shutdown ")
        systemctl poweroff
        ;;
    "Logout 󰍃")
        hyprctl dispatch exit 0
        ;;
    "Cancel 󰜺")
        exit 0
        ;;
esac
