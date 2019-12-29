#!/bin/bash

# https://pico-8.fandom.com/wiki/RunningPico8

PICO_PATH=/Applications/PICO-8.app/Contents/MacOS/
$PICO_PATH/pico8 \
    -root_path $PWD \
    -gui_theme 2 \
    -run *.p8
