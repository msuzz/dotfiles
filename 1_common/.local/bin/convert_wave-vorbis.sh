#!/bin/sh
find . -name "*wav" -exec oggenc -q 7 {} \;
