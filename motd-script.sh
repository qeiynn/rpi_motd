#!/bin/bash

logo="$(tput setaf 2)
   ___  _  _  ___  _     _
  / __|| || || __|| |   | |
  \__ \| __ || _| | |__ | |__
  |___/|_||_||___||____||____|
  ___  _  _   ___    ___  _  __  _
 / __|| || | / _ \  / __|| |/ / | |
 \__ \| __ || (_) || (__ | ' <  |_|
 |___/|_||_| \___/  \___||_|\_\ (_)

$(tput sgr0)"

if [ `whoami` != "root" ]; then
  echo "$logo"
  echo "Run as root to update your motd."
else
  echo "$logo" > /etc/motd
  echo "Updated MOTD. Log in to see the new logo."
fi 
