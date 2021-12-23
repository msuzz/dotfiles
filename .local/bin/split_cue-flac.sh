#!/bin/sh
shnsplit -f "$1" -o "flac flac -s -8 -o %f -" -t "%n. %t" "$2"
