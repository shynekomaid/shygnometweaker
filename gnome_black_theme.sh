#!/bin/bash

if [[ $# -eq 0 ]]; then
  gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
  gsettings set org.gnome.Terminal.Legacy.Settings theme-variant "dark"
elif [[ $1 == "-r" ]]; then
  gsettings reset org.gnome.desktop.interface gtk-theme
  gsettings reset org.gnome.Terminal.Legacy.Settings theme-variant
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi
