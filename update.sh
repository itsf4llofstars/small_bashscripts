#!/usr/bin/env bash
# Updates Ubuntu using sudo apt update, sudo apt upgrade, sudo apt dist-upgrade
# -yy added as options to prevent ubunto from asking to continue.

#: Display help text
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    clear
cat << EOF
Performs an update of linux installed packages automatically answering
yes to any questions asking to continue. Based on cmd line entries
the user can perform a upgrade, dist-upgrade, full-upgrade.

Example:
./update --dist

No cmd line option performs a regular upgrade.


options
    -h, --help  This help text.
    -u, --upgrade upgrade
    -d, --dist dist-upgrade
    -f, --full full-upgrade
EOF
    exit 0
fi

clear
cd /

sudo apt update -yy

if [ "$1" == "-u" ] || [ "$1" == "--upgrade" ]; then
    sudo apt upgrade -yy
elif [ "$1" == "-d" ] || [ "$1" == "--dist" ]; then
    sudo apt dist-upgrade -yy
elif [ "$1" == "-f" ] || [ "$1" == "--full" ]; then
    sudo apt full-upgrade -yy
else
    sudo apt upgrade -yy
fi

printf "\nAll updates and upgrades have been completed.\n"
