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
    -u, --update upgrade
    -d, --dist dist-upgrade
    -f, --full full-upgrade
EOF
    exit 0
fi

clear
cd /

sudo apt update -yy
sudo apt upgrade -yy
sudo apt dist-upgrade -yy
sudo apt full-upgrade -yy

printf "\nAll updates and upgrades have been completed.\n"
