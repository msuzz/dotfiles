#!/bin/sh
find -name "*.flac" -exec mpcenc --insane --ape2 {} {}.mpc \;
for f in *.flac.mpc; do mv "$f" "${f/.flac.mpc/.mpc}"; done
