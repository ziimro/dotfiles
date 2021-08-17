#!/bin/sh

# make sure the session starts in X11
XDG_SESSION_TYPE=x11

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# bspwm session is kept by default
session=${1:-bspwm}

case $session in
    bspwm ) exec bspwm && sxhkd;;
    qtile ) exec qtile start;;
    awesome ) exec awesome;;
    i3 ) exec i3;;
    # No known session, try to run it as command
    * ) exec $1;;
esac