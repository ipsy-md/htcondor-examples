#!/usr/bin/env python3

import argparse

#parser = argparse.ArgumentParser()
parser = argparse.ArgumentParser(description='Run my analysis.')
# type checks that the input type is correct and converts it to int, otherwise ist a string
# requires makes the subject argument mandatory, otherwise it can be script and is set to None by default
parser.add_argument('--subject', type=int, required=True, help='The subject number to process')
args = parser.parse_args()

print("This processes subject number", args.subject)
