#!/usr/bin/env bash

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
Description

Calls: If script not in the path
$ ./chmod.sh [options]

Calls: If script in the path
$ chmod.sh [options]

options
    -h, --help  This help text.
EOF
    exit 0
fi

#: Run if no -h or --help option passed as command line argument.
#: START CODE HERE
if [ ! -z "$1" ]; then
    chmod 755 "$1"
else
    clear
    printf "\nNo filename given.\n"
    exit 1
fi

# exit 0 is likely not needed.
exit 0
#: END CODE HERE

#: Documentation for man page creation.
#: Create man page by:
#: Filling in the sections below with your code and text. Don't touch the lines with the equals
#: sign. Run the command below this line in the command prompt by replacing the text between the
#: carots, along with the carots, with the scritps name. This is still a work in progress.

#: $ pod2man <script_name>.sh > <script_name>[.ext]

: <<'END_OF_DOCS'
=head1 NAME

    NAME <script_name.sh> [option]

=head1 SYNOPSIS

    SYNOPSIS

=head1 DESCRIPTION

    DESCRIPTION

=head1 EXAMPLES

    EXAMPLE calls

=head1 OVERVIEW

    OVERVIEW

=head1 DEFAULTS

    DEFAULTS

=head1 OPTIONS

    OPTIONS

END_OF_DOCS
