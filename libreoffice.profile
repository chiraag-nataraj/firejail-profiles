whitelist ${HOME}/Downloads
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/libreoffice
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
blacklist /opt
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /ae108

private-dev
private-bin sh,libreoffice,dirname,grep,uname,ls,sed,pwd,basename,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote
private-etc libreoffice,fonts,passwd,alternatives,X11
whitelist /tmp/.X11-unix

noexec ${HOME}/
noexec /tmp/

caps.drop all
noroot
nogroups
nosound
ipc-namespace
shell none
net none
protocol unix
seccomp
