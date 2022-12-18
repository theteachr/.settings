#!/usr/bin/bash

SETTINGS_DIR=$(pwd)
DOT_CONFIG_DIR=${HOME}/.config

AT_DOT_CONFIG=(
  nvim
  kitty
  bpython
  sway
  hypr
  waybar
  tofi
)

AT_HOME=(.tmux.conf)

for config in "${AT_HOME[@]}"
do
  ln -sf ${SETTINGS_DIR}/$config ${HOME}/
done

for config_folder in "${AT_DOT_CONFIG[@]}"
do
  ln -sf ${SETTINGS_DIR}/$config_folder ${DOT_CONFIG_DIR}/
done
