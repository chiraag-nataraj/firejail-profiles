<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${DOWNLOADS}
=======
# Firejail profile for pidgin
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/pidgin.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.config/pulse
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.pulse
whitelist ${HOME}/.purple
whitelist ${HOME}/.themes
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
nogroups
noroot
seccomp
shell none

private-bin pidgin
private-dev
private-etc X11,alternatives,resolv.conf,fonts,pulse
private-tmp

noexec ${HOME}
noexec /tmp
