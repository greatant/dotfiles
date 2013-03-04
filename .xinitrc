#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +fp /usr/share/fonts/local
xset fp rehash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources


if [ $HOSTNAME = "Willie" ]; then
    exec xmodmap -e "pointer = 3 2 1" &
    numlockx &
fi

#ln -s '/mnt/tv/TV Shows' '$HOME/video/tv'

systemd --user &

exec fvwm
