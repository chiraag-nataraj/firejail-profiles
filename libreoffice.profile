include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/Downloads
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/libreoffice
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-dev
private-bin sh,dash,libreoffice,dirname,grep,uname,ls,sed,pwd,basename,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote
private-etc libreoffice,fonts,passwd,alternatives,X11
whitelist /tmp/.X11-unix
whitelist /tmp/fcitx-socket-:0
whitelist /tmp/fcitx_dbus_socket
whitelist /tmp/dbus_session_socket
# Enable document recovery
whitelist /tmp/user/1000

noexec ${HOME}
noexec /tmp

caps.drop all
noroot
nogroups
nosound
ipc-namespace
shell none
net none
protocol unix
seccomp
