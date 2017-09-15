# Firejail profile for scribus
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/scribus.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.config/Trolltech.conf
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.scribus/
whitelist ${HOME}/Documents/
whitelist ${HOME}/Downloads/
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
net none
noroot
protocol unix
seccomp
shell none

private-bin scribus,gs
private-dev

# CLOBBERED COMMENTS
# Blacklist/Whitelist
# Config files
# I use Downloads as my data transfer directory
