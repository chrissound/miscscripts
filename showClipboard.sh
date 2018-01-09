#!/usr/bin/env bash

set -x

cp1=$(xclip -o -selection primary)
cp2=$(xclip -o -selection clipboard)
newline=$'\n'

gxmessage -geometry 900x900 -center -timeout 1.5 \
  "Primary: ${newline}${cp1}${newline}${newline}Clipboard:${newline}${cp2}"
  
