#!/bin/bash

# posit-param2: script to display all arguments

count=1

while [[ $# -gt 0 ]]; do
	echo "Argument $count = $1"
	count=$((count + 1))
	shift
done

# Output:

# Argument 1 = a
# Argument 2 = b
# Argument 3 = c
# Argument 4 = d
