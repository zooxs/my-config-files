#!/bin/sh

# determine current brightness state
CurBright=$(brightnessctl g)

newVal=$(expr $CurBright $1 10)

brightnessctl set $newVal
