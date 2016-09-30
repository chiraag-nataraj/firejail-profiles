whitelist ${DOWNLOADS}
whitelist ${HOME}/Music
whitelist ${HOME}/.lmmsrc.xml
whitelist ${HOME}/lmms

whitelist /tmp/.X11-unix

private-dev

noexec /home
noexec /tmp

shell none
seccomp
caps.drop all
net none
noroot
nogroups
ipc-namespace