blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/FreeCAD
whitelist ${HOME}/Documents

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin freecad,freecadcmd
private-dev
private-etc fonts,passwd,alternatives,X11
private-tmp

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