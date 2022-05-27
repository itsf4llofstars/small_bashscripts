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
Running this with a user path setup either this script in the path directory
or a link from the path directory to this script will check to ensure your
path is set. Path is set if script runs successfully.

Calls: For scripts in the path
$ <script_name>.sh [options]

options
    -h, --help  This help text.
EOF
    exit 0
fi

#: START CODE HERE
clear
echo

printf "By reading this line of text your path is set correct, provided you called this\n"
printf "script from a directory that does not hold this actuall script\n"

exit 0
