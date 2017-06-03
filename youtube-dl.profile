blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/Videos
whitelist ${DOWNLOADS}

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin python3,python3.5,youtube-dl
private-dev
private-etc hosts,resolv.conf,ssl
private-tmp

shell none
noroot
caps.drop all
seccomp
nogroups
nosound