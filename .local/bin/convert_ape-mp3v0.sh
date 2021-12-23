#!/bin/sh
find . -name "*ape" -exec ffmpeg -i {} -codec:a libmp3lame -q:a 0 -map_metadata 0 -id3v2_version 3 {}.mp3 \;
for f in *.ape.mp3; do mv "$f" "${f/.ape.mp3/.mp3}"; done
