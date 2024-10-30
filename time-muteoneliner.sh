#!/bin/sh
if [ -z "$1" ]; then SCRIPT="W t60*10"; else SCRIPT=$1; fi
if [ -z $2 ]; then PROG=../saugns/saugns; else PROG=$2; fi
echo "Using $PROG for -m evaluation of \"$SCRIPT\"."
while (true) do time $PROG -me "$SCRIPT"; done
