# Firejail profile for libreoffice
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/libreoffice.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.config/libreoffice
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${HOME}/Documents
whitelist ${HOME}/Downloads
whitelist /tmp/.X11-unix
whitelist /tmp/dbus_session_socket
whitelist /tmp/fcitx-socket-:0
whitelist /tmp/fcitx_dbus_socket
# Enable document recovery
whitelist /tmp/user/1000
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
nosound
protocol unix
seccomp
shell none

private-bin sh,dash,libreoffice,dirname,grep,uname,ls,sed,pwd,basename,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote
private-dev
private-etc libreoffice,fonts,passwd,alternatives,X11

noexec ${HOME}
noexec /tmp
