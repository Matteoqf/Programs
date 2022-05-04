export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US
export LC_CTYPE=en_US.UTF-8

export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export QT_IM_MODULE=fcitx5

syndaemon -t -k -i 2 -d &

fcitx5 &
picom &
flameshot &
nm-applet &
blueman-applet &
qv2ray &
xmodmap .Xmodmap &
exec dwm
