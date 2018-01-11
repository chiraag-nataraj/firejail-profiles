include /etc/firejail/globals.local

whitelist ${HOME}/.linphonerc
whitelist ${HOME}/.linphone-history.db
whitelist ${HOME}/Downloads
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

caps.drop all
noroot
seccomp