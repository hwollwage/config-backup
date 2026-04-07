#!/bin/bash

if [[ "$1" == "Shutdown" ]]; then
    systemctl poweroff
elif [[ "$1" == "Reboot" ]]; then
    systemctl reboot
elif [[ "$1" == "Suspend" ]]; then
    systemctl suspend
elif [[ "$1" == "Logout" ]]; then
    i3-msg exit
elif [[ "$1" == "Lock" ]]; then
    i3lock
else
    echo "Shutdown"
    echo "Reboot"
    echo "Suspend"
    echo "Logout"
    echo "Lock"
fi