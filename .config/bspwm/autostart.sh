#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# X settings
xinput set-prop "SteelSeries SteelSeries Rival 100 Gaming Mouse" "Coordinate Transformation Matrix" 0.5 0 0 0 0.5 0 0 0 1 &
xrandr --output HDMI-0 --primary &

# Change cursor theme
xsetroot -cursor_name left_ptr &

# Wallpaper
# nitrogen --restore &
feh --bg-fill /home/zim/.dotfiles/wallpapers/island-sunset.jpg &

# Programs
picom &
discord --start-minimized &
plank &
polybar top -r &
volumeicon &

#change your keyboard if you need it
#setxkbmap -layout pl


### Arco startup applications ###
# run nm-applet &
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# /usr/lib/xfce4/notifyd/xfce4-notifyd &
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &