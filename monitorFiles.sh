#!/bin/bash
while inotifywait -qq -e close_write --recursive $1; do echo 'test'; done

#while inotifywait -qq -e close_write --recursive .; do echo ""; ./ytdb.py; done
