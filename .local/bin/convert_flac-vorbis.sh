#!/bin/sh
find . -name "*flac" -exec oggenc -q 7 {} \;
