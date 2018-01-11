<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/.Skype
whitelist ${HOME}/Downloads
=======
# Firejail profile for skype
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/skype.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${HOME}/.Skype
whitelist ${HOME}/Downloads
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
noroot
protocol inet,inet6,unix
seccomp

private-bin skype,bash
private-etc resolv.conf,hosts,fonts,pulse

noexec ${HOME}/
noexec /tmp/
