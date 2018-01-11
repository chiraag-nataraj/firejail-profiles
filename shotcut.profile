include /etc/firejail/globals.local

blacklist /usr/local/bin

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

whitelist ${HOME}/.config/Meltytech

private-bin shotcut,melt,qmelt,nice
private-dev
private-etc X11,alternatives,pulse,fonts

whitelist /tmp/.X11-unix

noexec ${HOME}
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
# ipc-namespace