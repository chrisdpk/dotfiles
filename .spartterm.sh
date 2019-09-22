#!/bin/zsh
W3MIMGDISPLAY=/usr/lib/w3m/w3mimgdisplay
IMG=/tmp/spart.jpg
if [[ $(sp art) =~ "not running" ]]
then
else
  curl $(sp art) -sLo $IMG
  convert $IMG -resize 150x $IMG
  clear
  tput cup $((90/10)) 0
  printf '%b\n%s;\n%s\n' "0;1;0;0;150;150;;;;;$IMG" 3 4 | $W3MIMGDISPLAY
fi
