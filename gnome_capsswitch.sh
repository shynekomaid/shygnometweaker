#!/bin/bash

if [[ $# -eq 0 ]]; then
  gsettings set org.gnome.desktop.input-sources xkb-options "['grp:caps_toggle']"
  gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ru')]"
elif [[ $1 == "-r" ]]; then
  gsettings reset org.gnome.desktop.input-sources xkb-options
  gsettings reset org.gnome.desktop.input-sources sources
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi

# org.gnome.desktop.input-sources
