# Firejail profile for gimp
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/gimp.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.fonts
whitelist ${HOME}/.gimp-2.8
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/Pictures
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

private-bin gimp,gimp-2.8,gimp-console,gimp-console-2.8,python2.7
private-dev
private-etc gimp,fonts

noexec /home
noexec /tmp
