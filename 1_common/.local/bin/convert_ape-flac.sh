#!/usr/bin/env sh

find -name "*.ape" -exec ffmpeg -i {} -c:a flac -compression_level 12 {}.flac \;
for f in *.ape.flac;
do mv "$f" "${f/.ape.flac/.flac}";
done
