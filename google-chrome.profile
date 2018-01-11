# Firejail profile for google-chrome
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/google-chrome.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/google-chrome
whitelist ${HOME}/.config/google-googletalkplugin/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/PDF
whitelist /dev/dri
whitelist /dev/full
whitelist /dev/null
whitelist /dev/ptmx
whitelist /dev/pts
whitelist /dev/random
whitelist /dev/shm
whitelist /dev/snd
whitelist /dev/tty
whitelist /dev/urandom
whitelist /dev/video0
whitelist /dev/zero
whitelist /opt/google
whitelist /tmp/.X11-unix/
include /etc/firejail/whitelist-common.inc

caps.keep sys_chroot,sys_admin
ipc-namespace
shell none

private-bin google-chrome,google-chrome-stable,bash,readlink,dirname,cat
private-etc fonts,alternatives,X11,pulse,resolv.conf,localtime

noexec ${HOME}
noexec /tmp
