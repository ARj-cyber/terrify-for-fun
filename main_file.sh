#!/usr/bin/env bash

echo "What title did you want to show ?,example:Warning or Critical alert "
read title
echo
echo "Explain the warning message here : "
read message

modprobe pcspkr
beep -f 4000 -D 500 -l 1000 -r 10
x-term -maximized -fullscreen -fa 'Monospace' -fs 19.31 -e whiptail --title "$title" --msgbox "$message" --topleft 23 79
sleep 10
shutdown now
