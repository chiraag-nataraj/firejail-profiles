# Firejail profile for qpdfview
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/qpdfview.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/qpdfview
whitelist ${HOME}/Documents
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
nosound
seccomp
shell none

private-bin qpdfview
private-dev
private-etc fonts,X11,alternatives

noexec ${HOME}
noexec /tmp
