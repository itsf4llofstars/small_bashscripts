#/usr/bin/env bash

#: TITLE:      chmod.sh
#: DATE:       22/05/26
#: AUTHOR:     GitHub: itsf4llofstars
#: VERSION:    0.1
#: DESCRPTION: Changes the permission of a file to exicutable
#: OPTIONS:    -h, --help

#: Display help text
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    clear
cat << EOF
When called, changes the Linux permission of the file to 755.
The same as calling:
$ ./chmod 755 file

Calls: If script is not in the path
$ ./chmod.sh [options] file

Calls: If script is n the path
$ chmod.sh [options] file

options
    -h, --help  This help text.
EOF
    exit 0
fi

if [ ! -z "$1" ]; then
    chmod 755 "$1"
else
    clear
    printf "\nError: No filename given.\n"
    exit 1
fi

exit 0

