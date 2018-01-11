include /etc/firejail/globals.local

blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/ardour4
whitelist ${HOME}/.config/ardour5
whitelist ${HOME}/.lv2
whitelist ${HOME}/.vst

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin sh,ardour5,ardour5-copy-mixer,ardour5-export,ardour5-fix_bbtppq,grep,sed,ldd,nm
private-dev
private-etc pulse,X11,alternatives,ardour4,ardour5,fonts
private-tmp

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace