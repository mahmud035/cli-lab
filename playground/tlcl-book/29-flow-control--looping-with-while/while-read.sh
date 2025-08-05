#!/bin/bash

# while-read: read lines from a file

while read -r distro version release; do
	printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
		"$distro" \
		"$version" \
		"$release"
done <distros.txt

# Output:

# Distro: SUSE    Version: 10.2   Released: 12/07/2006
# Distro: Fedora  Version: 10     Released: 11/25/2008
# Distro: SUSE    Version: 11.0   Released: 06/19/2008
# Distro: Ubuntu  Version: 8.04   Released: 04/24/2008
# Distro: Fedora  Version: 8      Released: 11/08/2007
# Distro: SUSE    Version: 10.3   Released: 10/04/2007
# Distro: Ubuntu  Version: 6.10   Released: 10/26/2006
# Distro: Fedora  Version: 7      Released: 05/31/2007
# Distro: Ubuntu  Version: 7.10   Released: 10/18/2007
# Distro: Ubuntu  Version: 7.04   Released: 04/19/2007
# Distro: SUSE    Version: 10.10  Released: 5/11/2006
# Distro: Fedora  Version: 6      Released: 10/24/2006
# Distro: Fedora  Version: 9      Released: 05/13/2008
# Distro: Ubuntu  Version: 6.06   Released: 06/01/2006
# Distro: Ubuntu  Version: 8.10   Released: 10/30/2008
# Distro: Fedora  Version: 5      Released: 03/20/2006
