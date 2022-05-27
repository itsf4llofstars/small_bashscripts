#!/usr/bin/env bash

#: TITLE:      check-path.sh
#: DATE:       22/05/25
#: AUTHOR:     GitHub: itsf4llofstars
#: VERSION:    0.1
#: DESCRPTION: A script to check if your path is good
#: OPTIONS:    -h, --help

#: Display help text
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    clear
cat << EOF
Run this script with either the script or a hard/symbolic link in the path
directory. A successfull run means your path is correct.

Example:
With the script in the path directory:
    $ ./check-path.sh

With a hard/symbolic link:
    $ linkname

Calls: If script is in the path
$ check-path.sh [option]
$ linkname [option]

options
    -h, --help  This help text.
EOF
    exit 0
fi

clear
echo

printf "If reading these lines of text your path is set correctly.\n\n"

exit 0

