#!/bin/sh
ARGUMENTS="$@"

# Anything that should be done before the script call should be added here

python3 ~/htcondor_examples/with_arguments/example.py $ARGUMENTS
