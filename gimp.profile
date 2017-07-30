whitelist ${HOME}/.gimp-2.8
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.fonts

whitelist ${DOWNLOADS}
whitelist ${HOME}/Pictures

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin gimp,gimp-2.8,gimp-console,gimp-console-2.8,python2.7
private-dev
private-etc gimp,fonts

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