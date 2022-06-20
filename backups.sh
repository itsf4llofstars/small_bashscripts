#!/usr/bin/env bash
#: A boilerplate file for bash scripts.

#: TITLE:      backups.sh
#: DATE:       22/06/20
#: AUTHOR:     GitHub: itsf4llofstars
#: VERSION:    0.1
#: DESCRPTION: Bash script to backup files
#: OPTIONS:    -h, --help

#: Display help text
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    clear
cat << EOF
This script can be put in your path (symbolic link recommended) to initialte a
quick backup of your wanted files.

Calls: For scripts not in the path
$ ./backups.sh [options]

Calls: For scripts in the path
$ backups.sh [options]

options
    -h, --help  This help text.
EOF
    exit 0
fi

clear

echo "Test message"

exit 0
