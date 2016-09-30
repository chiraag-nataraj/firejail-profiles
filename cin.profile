whitelist ${HOME}/.bcast5

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

private-bin cin
private-dev

whitelist /tmp/.X11-unix

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace