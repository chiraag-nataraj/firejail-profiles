blacklist /usr/local/bin
blacklist /usr/local/sbin

blacklist /boot

private-tmp
read-only /tmp/.X11-unix
private-dev
nodvd
nosound
notv
nou2f
novideo
no3d
disable-mnt
private-opt emp
private-srv emp

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
nogroups
net none
netfilter
memory-deny-write-execute

noexec ${HOME}
noexec /tmp
noexec ${RUNUSER}
