include /etc/firejail/globals.local

caps.drop all

whitelist ${HOME}/Downloads
whitelist ${HOME}/VirtualBox_VMs
whitelist ${HOME}/.config/VirtualBox
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.config/Trolltech.conf

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist /dev/vboxdrv
whitelist /dev/vboxdrvu
whitelist /dev/vboxnetctl
whitelist /dev/null
whitelist /dev/dri
whitelist /dev/sdc1
whitelist /dev/sdc