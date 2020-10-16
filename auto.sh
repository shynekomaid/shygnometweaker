#!/bin/bash

chmod +x dockbar.sh gedit_dark_theme.sh gnome_black_theme.sh gnome_capsswitch.sh gnome_disable_animations.sh gnome_good_clock.sh

if [[ $# -eq 0 ]]; then
  ./dockbar.sh &&
  ./gedit_dark_theme.sh &&
  ./gnome_black_theme.sh &&
  ./gnome_capsswitch.sh &&
  ./gnome_disable_animations.sh &&
  ./gnome_good_clock.sh
elif [[ $1 == "-r" ]]; then
  ./dockbar.sh -r &&
  ./gedit_dark_theme.sh -r &&
  ./gnome_black_theme.sh -r &&
  ./gnome_capsswitch.sh -r &&
  ./gnome_disable_animations.sh -r &&
  ./gnome_good_clock.sh -r
elif [[ $1 == "-h" ]]; then
  echo '-r for restore';
fi
