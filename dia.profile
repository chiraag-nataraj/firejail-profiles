<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.icons
whitelist ${HOME}/.dia

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
=======
# Firejail profile for dia
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/dia.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.dia
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.icons
whitelist ${HOME}/.themes
whitelist ${HOME}/Documents
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
seccomp
shell none

private-bin dia
private-dev
private-etc fonts,X11
private-tmp

noexec /home
noexec /tmp
