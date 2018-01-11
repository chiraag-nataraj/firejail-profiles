<<<<<<< HEAD
include /etc/firejail/globals.local

whitelist ${HOME}/Music
whitelist ${HOME}/mpd
whitelist ${HOME}/.mpdconf
whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.pulse/
read-only ${HOME}/Music/
=======
# Firejail profile for mpd
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/mpd.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${HOME}/.config/pulse/
whitelist ${HOME}/.mpdconf
whitelist ${HOME}/.pulse/
whitelist ${HOME}/Music
whitelist ${HOME}/mpd
include /etc/firejail/whitelist-common.inc

caps.drop all
noroot
seccomp

private-bin mpd,bash
private-dev
read-only ${HOME}/Music/
