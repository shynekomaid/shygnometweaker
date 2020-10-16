#!/bin/bash

if [[ $# -eq 0 ]]; then
  gsettings set org.gnome.gedit.preferences.editor highlight-current-line false
elif [[ $1 == "-r" ]]; then
  gsettings reset org.gnome.gedit.preferences.editor highlight-current-line
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi
