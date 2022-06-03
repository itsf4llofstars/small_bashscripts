#!/usr/bin/bash

#: TITLE:      colors.sh
#: DATE:       22/06/02
#: AUTHOR:     GitHub: itsf4llofstars
#: VERSION:    1.0
#: DESCRPTION: Prints each 256 numbered color in their respective color.
#: OPTIONS:    -h, --help

#: Display help text
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    clear
cat << EOF
Prints 256 colors of the 256 color pallete with each color represented
by their number.

Calls:
$ ./colors.sh [option]

options
    -h, --help  This help text.
EOF
    exit 0
fi

clear

for i in {0..255}; do
    printf "\x1b[38;5;${i}m${i} "
done
echo
