include /etc/firejail/globals.local

whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.icons
whitelist ${HOME}/.dia

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin dia
private-dev
private-etc fonts,X11
private-tmp

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace