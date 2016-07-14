#!/bin/sh

export CLUTTER_BACKEND=x11
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
export XDG_RUNTIME_DIR=/run/user/$UID

xrdb -merge $HOME/.Xresources

#export LANG=zh_CN.UTF-8
export LANG=en_US.UTF-8
#export LANGUAGE=zh_CN.UTF-8
#export LANGUAGE=en_US.UTF-8
#export LC_CTYPE=en_US.UTF-8

#exec startxfce4 
#exec gnome-session
exec cinnamon-session
#exec startlxqt
#exec startkde 
#exec xterm
#export XDG_CURRENT_DESKTOP=Budgie:GNOME
#exec budgie-desktop



#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

#gsettings-data-convert &
#xdg-user-dirs-gtk-update &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/gnome-settings-daemon/gnome-settings-daemon &
#/usr/lib/gnome-user-share/gnome-user-share &
#eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
#exec cerbere
