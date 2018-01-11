include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot
blacklist /media
blacklist /mnt

whitelist ${HOME}/.config/whats-app-web-nativefier-7bbd2c
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}

private-bin emp
private-tmp
whitelist /opt/whats-app-web-linux-x64
private-dev
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf

shell none
seccomp
caps.drop all
ipc-namespace