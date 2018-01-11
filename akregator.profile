<<<<<<< HEAD
include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.config/
whitelist ${HOME}/.local/share/akregator/
=======
# Firejail profile for akregator
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/akregator.local
# Persistent global definitions
include /etc/firejail/globals.local
>>>>>>> 7bf44969dff7201d9239c0a606510cc67ed688db

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt
blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.config/
whitelist ${HOME}/.local/share/akregator/
whitelist /tmp/.X11-unix
# DBus is forced to use an ordinary unix socket
whitelist /tmp/dbus_session_socket
include /etc/firejail/whitelist-common.inc

caps.drop all
ipc-namespace
nogroups
nonewprivs
noroot
seccomp
shell none

private-bin akregator,akregatorstorageexporter,dbus-launch,kdeinit5,kshell5,kdeinit5_shutdown,kdeinit5_wrapper,kdeinit4,kshell4,kdeinit4_shutdown,kdeinit4_wrapper
private-dev
private-etc fonts,alternatives,X11,passwd
