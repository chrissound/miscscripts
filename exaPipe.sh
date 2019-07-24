#!/usr/bin/env bash
dirs=()
while read -r i; do
  dirs+=("-d");
  dirs+=("$i");
done

exa -l "$@" ${dirs[@]}
