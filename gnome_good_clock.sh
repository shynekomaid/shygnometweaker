#!/bin/bash

if [[ $# -eq 0 ]]; then
  gsettings set org.gnome.desktop.interface clock-show-seconds false
  gsettings set org.gnome.desktop.interface clock-show-date true
  gsettings set org.gnome.desktop.interface clock-show-weekday true
elif [[ $1 == "-r" ]]; then
  gsettings reset org.gnome.desktop.interface clock-show-seconds
  gsettings reset org.gnome.desktop.interface clock-show-date
  gsettings reset org.gnome.desktop.interface clock-show-weekday
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi
