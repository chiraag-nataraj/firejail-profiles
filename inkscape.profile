whitelist ${HOME}/.config/inkscape
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes

whitelist ${DOWNLOADS}
whitelist ${HOME}/Pictures

blacklist /usr/local/bin
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin inkscape
private-dev
private-etc fonts

whitelist /tmp/.X11-unix

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nosound
nogroups
ipc-namespace