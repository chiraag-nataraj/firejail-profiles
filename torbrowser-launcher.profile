# Firejail profile for torbrowser-launcher
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/torbrowser-launcher.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/torbrowser
whitelist ${HOME}/.config/torbrowser
whitelist ${HOME}/.local/share/torbrowser
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
include /etc/firejail/whitelist-common.inc

caps.drop all
noroot
seccomp
shell none

private-bin bash,grep,sed,tail,torbrowser-launcher,python,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,zenity,kdialog,xmessage,gxmessage,getconf,file,expr
private-etc X11,alternatives,pulse,resolv.conf,fonts,ssl
private-tmp

noexec /tmp
