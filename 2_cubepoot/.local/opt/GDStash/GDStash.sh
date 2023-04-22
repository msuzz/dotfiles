#!/usr/bin/env bash
#
# Runs GDStash using nix-shell to manage dependencies.
#
# Place this script in GDStash root directory and run from there.

SCRIPT_RELATIVE_DIR=$(dirname "${BASH_SOURCE[0]}")
cd $SCRIPT_RELATIVE_DIR
nix-shell -p jdk --run "java -Xms1152m -Xmx1152m -jar GDStash.jar > gdstart.log"
