#!/bin/sh

# A dwm_bar module to display the current backlight brighness with xbacklight
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xbacklight

dwm_backlight () {
    #printf "%s☀ %.0f%s\n" "$SEP1" "$(xbacklight)" "$SEP2"
    cur_light=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
    max_light=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)
    curP_light=`expr ${cur_light}/${max_brightness}`
    printf "%s☀ %.0f%s\n" "$SEP1" "$cur_light" "$SEP2"
}

dwm_backlight
