#!/bin/bash

cmd=$(ps aux | grep waybar | head -n 1)
IFS=" " read -r -a arr <<< "$cmd"
kill ${arr[1]}

exec waybar &
