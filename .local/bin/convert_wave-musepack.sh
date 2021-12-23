#!/bin/sh
find -name "*.wav" -exec mpcenc --insane --ape2 {} {}.mpc \;
for f in *.wav.mpc; do mv "$f" "${f/.wav.mpc/.mpc}"; done
