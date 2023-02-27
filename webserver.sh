#!/bin/sh

X4_DIR = $1

if [ -z "X4_DIR" ]; then
  X4_DIR = "$HOME/X4"
fi

cd $X4_DIR
python3 -m http.server 8001 &
xdg-open http://localhost:8001
