#!/usr/bin/env bash
set -x
if [[ -d "$1" ]]; then
  first=$(find "$1"/*  -print -quit)
  mplayer -endpos 0:00:02 -channels 2 -ao jack -af extrastereo=0 -volume 10 "$first" > /dev/null 2>&1 & 
else
  mplayer -endpos 0:00:02 -channels 2 -ao jack -af extrastereo=0 -volume 10 "$1" > /dev/null 2>&1 & 
fi
