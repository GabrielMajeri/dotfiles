#!/bin/bash

# Merge in Xresources
xrdb -merge ~/.Xresources

for f in /etc/X11/xinit/xinitrc.d/*.sh ; do
    [ -x "$f" ] && source "$f"
done
unset f

# Launch KDE
exec startplasma-x11
