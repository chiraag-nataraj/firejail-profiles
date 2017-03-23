blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${DOWNLOADS}
whitelist ${HOME}/.aMule
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin amule
private-dev
private-etc fonts,hosts
private-tmp

shell none
seccomp
caps.drop all
noroot
nonewprivs
nogroups
ipc-namespace