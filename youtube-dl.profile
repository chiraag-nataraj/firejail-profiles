# Firejail profile for youtube-dl
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/youtube-dl.local
# Persistent global definitions
include /etc/firejail/globals.local

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos
include /etc/firejail/whitelist-common.inc

caps.drop all
nogroups
noroot
nosound
seccomp
shell none

private-bin python3,python3.5,youtube-dl
private-dev
private-etc hosts,resolv.conf,ssl
private-tmp
