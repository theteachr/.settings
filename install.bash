#!/usr/bin/bash

SETTINGS_DIR=$(pwd)
DOT_CONFIG_DIR=${HOME}/.config

ln -sf ${SETTINGS_DIR}/nvim        ${DOT_CONFIG_DIR}/
ln -sf ${SETTINGS_DIR}/.tmux.conf  ${HOME}/
ln -sf ${SETTINGS_DIR}/kitty       ${DOT_CONFIG_DIR}/
ln -sf ${SETTINGS_DIR}/bpython     ${DOT_CONFIG_DIR}/
ln -sf ${SETTINGS_DIR}/sway        ${DOT_CONFIG_DIR}/
ln -sf ${SETTINGS_DIR}/hypr        ${DOT_CONFIG_DIR}/
