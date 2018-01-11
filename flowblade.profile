<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/.flowblade
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.config/flowblade
=======
# Firejail profile for flowblade
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/flowblade.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/flowblade
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.flowblade
whitelist ${HOME}/.themes
whitelist ${HOME}/Videos
whitelist /tmp/.X11-unix/
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
net none
nogroups
noroot
seccomp
shell none

private-bin python,flowblade
private-dev
private-etc pulse,fonts,alternatives,X11

noexec /home
noexec /tmp
