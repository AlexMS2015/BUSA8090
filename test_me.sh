#!/bin/bash

# The program print out a specific phrase depending on whether there are arguments or not

if test $# -eq 0; then
	echo "This is NOT a test"
else
	echo "This is a TEST"
fi
