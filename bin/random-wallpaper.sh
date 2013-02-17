#!/bin/bash

cd $HOME/images/wallpaper
wall=$(shuf -n1 -e *)

rm -f $fvwm_wall/.random.png

ln -s $fvwm_wall/$wall $fvwm_wall/.random.png
