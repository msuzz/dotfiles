#!/bin/sh
find -name "*.ape" -exec mpcenc --insane --ape2 {} {}.mpc \;
for f in *.ape.mpc; do mv "$f" "${f/.ape.mpc/.mpc}"; done
