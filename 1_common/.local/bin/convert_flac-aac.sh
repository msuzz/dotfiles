#!/usr/bin/env sh
find . -name "*flac" -exec ffmpeg -i {} -codec:a libfdk_aac -vbr 5 -map_metadata 0 {}.m4a \;
for f in *.flac.m4a; do mv "$f" "${f/.flac.m4a/.m4a}"; done
