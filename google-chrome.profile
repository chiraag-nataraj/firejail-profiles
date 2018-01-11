include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot
blacklist /media
blacklist /mnt

whitelist /opt/google

whitelist ${HOME}/.config/google-chrome
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.config/google-googletalkplugin/

whitelist ${DOWNLOADS}
whitelist ${HOME}/PDF

private-bin google-chrome,google-chrome-stable,bash,readlink,dirname,cat
private-etc fonts,alternatives,X11,pulse,resolv.conf,localtime
whitelist /dev/dri
whitelist /dev/full
whitelist /dev/null
whitelist /dev/ptmx
whitelist /dev/pts
whitelist /dev/random
whitelist /dev/shm
whitelist /dev/snd
whitelist /dev/tty
whitelist /dev/urandom
whitelist /dev/video0
whitelist /dev/zero
whitelist /tmp/.X11-unix/

noexec ${HOME}
noexec /tmp

shell none
ipc-namespace
caps.keep sys_chroot,sys_admin