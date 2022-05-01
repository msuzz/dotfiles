#!/usr/bin/env bash

# Simple script to set up Corsair Commander Pro custom profiles for each
# fan in the babpoot.
# Last updated: 14/04/21
#
# Run as root!

# Temps;  Fan RPM
tmp1=20;  rpm1=500
tmp2=40;  rpm2=800
tmp3=48;  rpm3=1200
tmp4=60;  rpm4=1200
tmp5=70;  rpm5=1500
tmp6=75;  rpm6=2000

exec /usr/local/bin/liquidctl initialize all
exec /usr/local/bin/liquidctl set sync speed $tmp1 $rpm1 $tmp2 $rpm2 $tmp3 $rpm3 $tmp4 $rpm4 $tmp5 $rpm5 $tmp6 $rpm6
    
