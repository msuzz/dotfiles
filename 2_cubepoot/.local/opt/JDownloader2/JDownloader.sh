#!/usr/bin/env bash
#
# Runs JDownloader2 using nix-shell to manage dependencies.
#
# Place this script in JDownloader2 root directory and run from there.

SCRIPT_RELATIVE_DIR=$(dirname "${BASH_SOURCE[0]}")
cd $SCRIPT_RELATIVE_DIR
nix-shell -p ffmpeg jdk --run "java -jar JDownloader.jar"
