#!/bin/sh
if [ -z $1 ]; then PROG=../saugns/saugns; else PROG=$1; fi
echo "Using $PROG for -m evaluation of \"../saugns/examples/\"."
while (true) do time $PROG -m ../saugns/examples/*.* ../saugns/examples/*/*.*; done
