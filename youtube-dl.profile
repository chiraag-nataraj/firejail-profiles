<<<<<<< HEAD
include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/Videos
whitelist ${DOWNLOADS}
=======
# Firejail profile for youtube-dl
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/youtube-dl.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

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

private-bin python3,python3.6,youtube-dl
private-dev
private-etc hosts,resolv.conf,ssl
private-tmp
