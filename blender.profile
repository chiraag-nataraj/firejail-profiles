whitelist ${HOME}/.config/blender

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin blender
private-dev
private-etc pulse,fonts

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