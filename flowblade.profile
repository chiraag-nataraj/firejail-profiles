whitelist ${HOME}/.flowblade
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.config/flowblade

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

blacklist /usr/local/bin
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin python,flowblade
private-dev
private-etc pulse,fonts,alternatives,X11

whitelist /tmp/.X11-unix/

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace