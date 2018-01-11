include /etc/firejail/globals.local

blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin mupdf,sh,tempfile,rm
private-dev
private-etc alternatives,X11,fonts
private-tmp

noexec ${HOME}
noexec /tmp

read-only ${HOME}

shell none
seccomp
caps.drop all
net none
noroot
nogroups
nosound
ipc-namespace