#!/bin/bash

# select-demo: select builtin demo

PS3="
Your choice: "

select my_choice in First Second Third Fourth Quit; do
	echo "REPLY= $REPLY my_choice= $my_choice"
	[[ "$my_choice" == "Quit" ]] && break
done
