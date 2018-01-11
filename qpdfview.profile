<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist /tmp/.X11-unix

## Add other whitelisted directories here if desired

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents

##

whitelist ${HOME}/.config/qpdfview
=======
# Firejail profile for qpdfview
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/qpdfview.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

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
