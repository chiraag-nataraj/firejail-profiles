include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot
blacklist /media
blacklist /mnt

private-opt emp

whitelist ${HOME}/.local/share/TelegramDesktop
whitelist ${DOWNLOADS}
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0

private-dev
private-tmp
private-bin telegram-desktop

shell none
seccomp
caps.drop all
noroot
ipc-namespace