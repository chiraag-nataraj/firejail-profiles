<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/Pictures
whitelist ${HOME}/Downloads
whitelist ${HOME}/.LuminanceHDR
whitelist ${HOME}/.config/Luminance
=======
# Firejail profile for luminance-hdr
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/luminance-hdr.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${HOME}/.LuminanceHDR
whitelist ${HOME}/.config/Luminance
whitelist ${HOME}/Downloads
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

private-bin luminance-hdr,luminance-hdr-cli,align_image_stack
private-dev
private-etc fonts,X11,alternatives

noexec ${HOME}
noexec /tmp
