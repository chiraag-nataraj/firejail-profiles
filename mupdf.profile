<<<<<<< HEAD
include /etc/firejail/globals.local

blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
=======
# Firejail profile for mupdf
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/mupdf.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
nosound
seccomp
shell none

private-bin mupdf,sh,tempfile,rm
private-dev
private-etc alternatives,X11,fonts
private-tmp
read-only ${HOME}

noexec ${HOME}
noexec /tmp
