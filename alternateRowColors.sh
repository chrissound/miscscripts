#!/bin/bash
while read line
do
  echo -e "\e[0;34m$line"
  read line
  echo -e "\e[1;34m$line"
done
echo -en "\e[0m"
