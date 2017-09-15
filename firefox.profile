# Firejail profile for firefox
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/firefox.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /ae108
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.Xauthority
whitelist ${HOME}/.config/fcitx/
whitelist ${HOME}/.config/google-googletalkplugin/
whitelist ${HOME}/.config/gtk-3.0/
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.mozilla
whitelist ${HOME}/.pulse/
whitelist ${HOME}/.themes
whitelist ${HOME}/Downloads/
whitelist ${HOME}/PDF/
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
whitelist /tmp/dbus_session_socket
whitelist /tmp/fcitx-socket-:0
whitelist /tmp/fcitx_dbus_socket
include /etc/firejail/whitelist-common.inc

caps.drop all
noroot
seccomp
shell none

private-bin firefox,which,sh,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote,fcitx,env
private-etc hosts,passwd,mime.types,fonts/,mailcap,iceweasel/,xdg/,gtk-3.0/,resolv.conf,X11/,pulse/,alternatives/,localtime,nsswitch.conf

noexec ${HOME}
noexec /tmp

# CLOBBERED COMMENTS
# Blacklist/Whitelist
# Miscellaneous options
# Private directories
# protocol unix,inet,inet6
