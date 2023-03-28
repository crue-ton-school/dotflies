#!/usr/bin/env python

import math
import subprocess

def round_down(x):
    return int("{:.0f}".format(x))

try:
    title = subprocess.check_output(['playerctl', 'metadata', 'xesam:title'], stderr=subprocess.STDOUT)
    artist = subprocess.check_output(['playerctl', 'metadata', 'xesam:artist'], stderr=subprocess.STDOUT)
    length = subprocess.check_output(['playerctl', 'metadata', 'mpris:length'], stderr=subprocess.STDOUT)
except subprocess.CalledProcessError:
    print("")
    exit(1);

title = str(title.decode("utf-8")).replace("\n","")
artist = str(artist.decode("utf-8")).replace("\n","")

length = int(length.decode("utf-8"))
length = length / 1000000

minutes = length / 60
minutes = round_down(minutes)

seconds = length - (minutes * 60)
seconds = round_down(seconds)

print(f"{title} - {artist}   {minutes}:{seconds}")
