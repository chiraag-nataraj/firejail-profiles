<<<<<<< HEAD
include /etc/firejail/globals.local

# Blacklist/Whitelist
=======
# Firejail profile for openshot
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/openshot.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.openshot/
whitelist ${HOME}/Downloads/
whitelist ${HOME}/Videos/
whitelist /tmp/.X11-unix
include /etc/firejail/whitelist-common.inc

caps.drop all
noroot
protocol unix
seccomp
shell none

private-bin openshot,python
private-dev
