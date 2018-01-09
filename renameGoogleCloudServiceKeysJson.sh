#!/usr/bin/env bash
for keyjson in *.json; do mv "$keyjson" "$(jq '.client_email' "$keyjson" | sed "s/\"\\(.*\\)@.*/\\1/" )".json; done
