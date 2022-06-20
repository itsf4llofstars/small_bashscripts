#!/usr/bin/env bash
#: A boilerplate file for bash scripts.

#: TITLE:      backups.sh
#: DATE:       22/06/20
#: AUTHOR:     GitHub: itsf4llofstars
#: VERSION:    0.1
#: DESCRPTION: Bash script to backup files
#: OPTIONS:    -h, --help, directory

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
    directory   The name of the directory to be backed up
    -h, --help  This help text.
EOF
    exit 0
fi

clear

# Check if first command argument is not empty
if [ -z "$1" ]; then
    echo "A directory name is needed"
    exit 1
fi

# Check if backup directory exists
if [ -d "$HOME"/"$1" ]; then
    # Show available file in directory
    ls "$HOME"/"$1"

    # Ask what file extension should be backed up
    printf "\nEnter the file extension (leave blank for all files or q to quit): "
    read file_ext

    if [ "$file_ext" == "q" ]; then
        exit 0
    elif [ -z "$file_ext" ]; then
        file_ext="files"
    fi

    tar --create --verbose --absolute-names --file="$HOME"/"$1"/"$file_ext"-backup.tar "$HOME"/"$1"/*."$2"

    clear
    ls -lhgGAF "$HOME"/"$1"
else
    echo "Directory does not exist"
    exit 1
fi

exit 0
