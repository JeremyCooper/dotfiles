#!/bin/sh

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

xset r rate 200 100
xset m 0 0
xset s off -dpms
xrandr --output DP1 --mode 1920x1080 --rate 144.00
bgchd -dir ~/Pictures/Wallpapers/abstract/ ~/Pictures/Wallpapers/cities ~/Pictures/Wallpapers/etc/ ~/Pictures/Wallpapers/girls/ ~/Pictures/Wallpapers/media/ ~/Pictures/Wallpapers/peaceful/ ~/Pictures/Wallpapers/space/ ~/Pictures/Wallpapers/bnw/ ~/Pictures/Wallpapers/digital/ ~/Pictures/Wallpapers/funny/ ~/Pictures/Wallpapers/lewd/ ~/Pictures/Wallpapers/nature/ ~/Pictures/Wallpapers/quotes/ -intv 15m -bcknd feh -rpl
numlockx

exec openbox-session
