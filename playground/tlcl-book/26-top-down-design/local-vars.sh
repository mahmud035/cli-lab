#!/bin/bash

# local-vars: script to demonstrate local variables

foo=0 # global variable foo

func_1() {
	local foo # variable local to func_1

	foo=1
	echo "func_1: foo = $foo"
}

func_2() {
	local foo # variable local to func_2

	foo=2
	echo "func_2: foo = $foo"
}

echo "global: foo = $foo"
func_1
echo "global: foo = $foo"
func_2
echo "global: foo = $foo"

# Output:
# global: foo = 0
# func_1: foo = 1
# global: foo = 0
# func_2: foo = 2
# global: foo = 0
