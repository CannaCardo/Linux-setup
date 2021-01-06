exec xrdb ~/.Xresources &
# Keyboard refresh faster on key hold
# xset r rate 150 60 &
# only required when wm does not have compositor
# exec picom &
eval $(ssh-agent) &
feh --bg-scale ~/photos/wallpapers/current.jpg &
xbindkeys -p &
exec startxfce4
