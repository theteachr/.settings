#!/usr/bin/env bash

SETTINGS_DIR=$(realpath $(dirname $0))
DOT_CONFIG_DIR=${HOME}/.config

echo $SETTINGS_DIR

AT_DOT_CONFIG=(
  nvim
  kitty
  bpython
  sway
  hypr
  waybar
  tofi
  helix
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
