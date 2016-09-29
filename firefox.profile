# Blacklist/Whitelist

blacklist /usr/local/bin
blacklist /usr/local/sbin
blacklist /media
blacklist /mnt
blacklist /boot
blacklist /ae108

whitelist ${HOME}/.mozilla
whitelist ${HOME}/Downloads/
whitelist ${HOME}/.pulse/
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.config/gtk-3.0/
whitelist ${HOME}/.config/google-googletalkplugin/
whitelist ${HOME}/.config/fcitx/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${HOME}/.Xauthority
whitelist ${HOME}/PDF/

# Private directories

private-bin firefox,which,sh,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote,fcitx,env
private-etc hosts,passwd,mime.types,fonts/,mailcap,iceweasel/,xdg/,gtk-3.0/,resolv.conf,X11/,pulse/,alternatives/,localtime,nsswitch.conf
whitelist /dev/dri
whitelist /dev/full
whitelist /dev/null
whitelist /dev/ptmx
whitelist /dev/pts
whitelist /dev/random
whitelist /dev/shm
whitelist /dev/snd
whitelist /dev/tty
whitelist /dev/urandom
whitelist /dev/video0
whitelist /dev/zero
whitelist /tmp/.X11-unix/
whitelist /tmp/fcitx-socket-:0
whitelist /tmp/fcitx_dbus_socket
whitelist /tmp/dbus_session_socket

noexec ${HOME}
noexec /tmp

# Miscellaneous options

shell none
seccomp
noroot
caps.drop all
# protocol unix,inet,inet6