#!/usr/bin/env bash

COLORSCHEME=DoomOne

### AUTOSTART PROGRAMS ###
#starting utility applications at boot time
run variety &
run xfce4-power-manager &
numlockx on &
variety &
numlockx on &
lxsession &
picom --daemon &
/usr/bin/emacs --daemon &
nm-applet &
"$HOME"/.screenlayout/layout.sh &
# "$HOME"/home/lm/.config/qtile/sxhkd/sxhkdrc &
sleep 1
conky -c "$HOME"/.config/conky/qtile/01/"$COLORSCHEME".conf || echo "Couldn't start conky."

### UNCOMMENT ONLY ONE OF THE FOLLOWING THREE OPTIONS! ###
# 1. Uncomment to restore last saved wallpaper
#xargs xwallpaper --stretch <~/.cache/wall &
# 2. Uncomment to set a random wallpaper on login
# find /usr/share/backgrounds/dtos-backgrounds/ -type f | shuf -n 1 | xargs xwallpaper --stretch &
# 3. Uncomment to set wallpaper with nitrogen
# nitrogen --restore &
$HOME/.config/autostart/xinputI3.sh &
xrandr --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-0 --mode 1440x900 --pos 1920x0 --rotate normal &

#start sxhkd to replace Qtile native key-bindings
# run sxhkd -c /home/lm/.config/qtile/sxhkd/sxhkdrc &
