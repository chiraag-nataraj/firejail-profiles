blacklist /usr/local/bin

whitelist ${HOME}/Downloads
whitelist ${HOME}/Pictures
whitelist ${HOME}/.config/darktable
whitelist ${HOME}/.cache/darktable

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin darktable
private-dev
private-etc fonts,X11,alternatives

whitelist /tmp/.X11-unix

noexec ${HOME}
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nosound
nogroups
ipc-namespace