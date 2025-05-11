#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-6"

theme='style-1'

## Run
# clipman pick -t rofi --tool-args="-theme ${dir}/${theme}.rasi -icon-theme Tela-circle-black"
rofi -modi "clipboard:greenclip print" -theme ${dir}/${theme}.rasi -icon-theme Tela-circle-black -show-icons -show clipboard -run-command '{cmd}'