#!/bin/bash

if [[ $# -eq 0 ]]; then
  gsettings reset org.gnome.shell.extensions.dash-to-dock dock-position
  gsettings reset org.gnome.shell.extensions.dash-to-dock extend-height
  gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
  gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
  gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 1.0
elif [[ $1 == "-r" ]]; then
  gsettings reset org.gnome.shell.extensions.dash-to-dock transparency-mode
  gsettings reset org.gnome.shell.extensions.dash-to-dock dash-max-icon-size
  gsettings reset org.gnome.shell.extensions.dash-to-dock extend-height
  gsettings reset org.gnome.shell.extensions.dash-to-dock dock-position
  gsettings reset org.gnome.shell.extensions.dash-to-dock background-opacity
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi
