whitelist ${DOWNLOADS}
whitelist ${HOME}/Music
whitelist ${HOME}/.lmmsrc.xml
whitelist ${HOME}/lmms

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist /tmp/.X11-unix

private-dev
private-etc fonts,pulse

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace