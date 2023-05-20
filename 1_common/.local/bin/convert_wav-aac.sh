#!/usr/bin/env sh
find . -name "*wav" -exec ffmpeg -i {} -codec:a libfdk_aac -vbr 5 -map_metadata 0 {}.m4a \;
for f in *.wav.m4a; do mv "$f" "${f/.wav.m4a/.m4a}"; done
