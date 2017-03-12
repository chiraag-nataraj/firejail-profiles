blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.config/
whitelist ${HOME}/.local/share/akregator/

blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

private-bin akregator,akregatorstorageexporter,dbus-launch,kdeinit5,kshell5,kdeinit5_shutdown,kdeinit5_wrapper,kdeinit4,kshell4,kdeinit4_shutdown,kdeinit4_wrapper
private-dev
private-etc fonts,alternatives,X11,passwd

whitelist /tmp/.X11-unix
# I have forced DBus to use an ordinary unix socket
whitelist /tmp/dbus_session_socket

shell none
seccomp
caps.drop all
noroot
nonewprivs
nogroups
ipc-namespace