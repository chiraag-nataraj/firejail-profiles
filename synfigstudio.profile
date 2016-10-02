whitelist ${DOWNLOADS}
whitelist ${HOME}/.synfig

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin synfigstudio
private-etc fonts,X11,synfig,synfig_modules.cfg
private-dev
whitelist /tmp/.X11-unix

noexec ${HOME}
noexec /tmp

shell none
noroot
ipc-namespace
net none
seccomp
caps.drop all