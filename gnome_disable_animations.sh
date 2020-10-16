#!/bin/bash

if [[ $# -eq 0 ]]; then
  gsettings set org.gnome.desktop.interface enable-animations false
elif [[ $1 == "-r" ]]; then
  gsettings reset org.gnome.desktop.interface enable-animations
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi
