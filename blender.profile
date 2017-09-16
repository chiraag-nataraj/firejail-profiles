# Firejail profile for blender
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/blender.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/blender
whitelist ${HOME}/Videos
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
seccomp
shell none

private-bin blender
private-dev
private-etc pulse,fonts

noexec /home
noexec /tmp
