include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot
blacklist /media
blacklist /mnt

whitelist ${HOME}/.config/Slack
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}

private-bin slack
private-tmp
private-opt emp
private-dev
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf

shell none
noroot
seccomp
caps.drop all
ipc-namespace