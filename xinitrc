#!/bin/sh
xrdb ~/.Xresources
xphoon &
XDG_SESSION_TYPE=x11
exec i3
