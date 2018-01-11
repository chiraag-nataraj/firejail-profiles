include /etc/firejail/globals.local

private-bin sh,dig,awk,xdg-mime,cut,touch,mv
private-etc hosts,fonts,mailcap,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf,ssl,proxychains.conf
private-tmp

whitelist /opt/viber

whitelist ${HOME}/.ViberPC
whitelist ${DOWNLOADS}

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

noexec ${HOME}
noexec /tmp

shell none
seccomp
# noroot
caps.drop all
nogroups
ipc-namespace

# x11 xpra

env QML_DISABLE_DISK_CACHE=1