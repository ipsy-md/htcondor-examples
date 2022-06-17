#!/bin/sh

# exit if a command fails
set -e

usage()
{
	cat <<-HELP
Usage: ${0##*/} SCRIPT_PATH SCRIPT_PARAMETER1, ...

This script is a wrapper script to set up the environment before calling the given script.
HELP
}

SCRIPT="$1"
test -z "$SCRIPT" && { usage; exit 1; }
test -f "$SCRIPT" || { echo "Script $SCRIPT does not exist"; exit 1; }

shift
ARGUMENTS="$@"

# Anything that should be done before the script call should be added here

python3 "$SCRIPT" $ARGUMENTS
