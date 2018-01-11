include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot
blacklist /media
blacklist /mnt

whitelist /opt/messengerfordesktop

whitelist ${HOME}/.config/Messenger for Desktop
whitelist ${DOWNLOADS}
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0

private-dev
private-tmp
private-bin emp

noexec ${HOME}
# noexec /tmp

shell none
seccomp
caps.drop all