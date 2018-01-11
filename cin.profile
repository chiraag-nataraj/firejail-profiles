include /etc/firejail/globals.local

whitelist ${HOME}/.bcast5

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

private-bin cin
private-dev
private-etc fonts,pulse

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist /tmp/.X11-unix

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace