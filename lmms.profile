<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${DOWNLOADS}
whitelist ${HOME}/Music
whitelist ${HOME}/.lmmsrc.xml
whitelist ${HOME}/lmms
=======
# Firejail profile for lmms
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/lmms.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.lmmsrc.xml
whitelist ${HOME}/Music
whitelist ${HOME}/lmms
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
seccomp
shell none

private-dev
private-etc fonts,pulse

noexec /home
noexec /tmp
