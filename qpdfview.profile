include /etc/firejail/globals.local

whitelist /tmp/.X11-unix

## Add other whitelisted directories here if desired

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents

##

whitelist ${HOME}/.config/qpdfview

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-dev
private-etc fonts,X11,alternatives
private-bin qpdfview

noexec ${HOME}
noexec /tmp

shell none
seccomp
caps.drop all
noroot
net none
nogroups
nosound
ipc-namespace