<<<<<<< HEAD
include /etc/firejail/globals.local

private-bin sh,dig,awk,xdg-mime,cut,touch,mv
private-etc hosts,fonts,mailcap,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf,ssl,proxychains.conf
private-tmp
=======
# Firejail profile for Viber
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/Viber.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db


whitelist ${DOWNLOADS}
whitelist ${HOME}/.ViberPC
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
whitelist /opt/viber
include /etc/firejail/whitelist-common.inc

<<<<<<< HEAD
noexec ${HOME}
noexec /tmp

shell none
seccomp
# noroot
=======
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db
caps.drop all
ipc-namespace
nogroups
<<<<<<< HEAD
ipc-namespace

# x11 xpra

env QML_DISABLE_DISK_CACHE=1
=======
noroot
seccomp
shell none

private-bin sh,dig,awk
private-etc hosts,fonts,mailcap,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf,ssl,proxychains.conf
private-tmp

noexec ${HOME}
noexec /tmp
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db
