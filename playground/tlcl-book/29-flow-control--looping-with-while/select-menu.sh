#!/bin/bash

# select-menu: a menu driven system information program

DELAY=3 # Number of seconds to display results
PS3="
Enter selection [1-4] -> "

select str in \
	"Display System Information" \
	"Display Disk Space" \
	"Display Home Space Utilization" \
	"Quit"; do

	if [[ "$REPLY" == "1" ]]; then
		echo "Hostname: $HOSTNAME"
		uptime
		sleep "$DELAY"
		continue
	fi

	if [[ "$REPLY" == "2" ]]; then
		df -h
		sleep "$DELAY"
		continue
	fi

	if [[ "$REPLY" == "3" ]]; then
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home Space Utilization (All Users)"
			du -sh /home/* 2>/dev/null
		else
			echo "Home Space Utilization ($USER)"
			du -sh "$HOME" 2>/dev/null
		fi
		sleep "$DELAY"
		continue
	fi

	if [[ "$REPLY" == "4" ]]; then
		break
	fi

	if [[ -z "$str" ]]; then
		echo "Invalid entry."
		sleep "$DELAY"
	fi
done
echo "Program terminated."
