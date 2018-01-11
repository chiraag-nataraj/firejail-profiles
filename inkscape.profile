<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/.config/inkscape
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
=======
# Firejail profile for inkscape
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/inkscape.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/inkscape
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

private-bin inkscape
private-dev
private-etc fonts

noexec /home
noexec /tmp
