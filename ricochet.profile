whitelist ${HOME}/.local/share/Ricochet

whitelist ${DOWNLOADS}

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin ricochet,tor
private-dev
private-etc fonts,tor,X11,alternatives

whitelist /tmp/.X11-unix

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
noroot
nogroups
ipc-namespace