blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot

private-tmp
private-dev
disable-mnt
private-opt emp

noexec ${HOME}
noexec /tmp

shell none
seccomp
seccomp.block-secondary
noroot
caps.drop all
apparmor
nonewprivs
ipc-namespace
machine-id
nodbus
nou2f
nogroups
net none
