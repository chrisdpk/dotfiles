setxkbmap de
amixer -c 0 sset "Analog Output" "Stereo Headphones"
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi


