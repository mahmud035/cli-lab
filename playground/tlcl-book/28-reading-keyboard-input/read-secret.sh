#!/bin/bash

# read-secret: input a secret passphrase

if read -r -t 10 -sp "Enter secret passphrase -> " secret_pass; then
	echo -e "\nSecret passphrase = '$secret_pass'"
else
	echo -e "\nInput timed out" >&2
	exit 1
fi
