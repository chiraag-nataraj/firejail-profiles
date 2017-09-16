# Firejail profile for synfigstudio
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/synfigstudio.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.synfig
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
noroot
seccomp
shell none

private-bin synfigstudio
private-dev
private-etc fonts,X11,synfig,synfig_modules.cfg

noexec ${HOME}
noexec /tmp
