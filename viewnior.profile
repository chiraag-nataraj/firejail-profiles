whitelist ${DOWNLOADS}
whitelist ${HOME}/Pictures
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/viewnior

private-bin viewnior
private-dev
private-etc fonts
private-tmp

noexec ${HOME}
noexec /tmp

shell none
net none
seccomp
noroot
nonewprivs
caps.drop all
nogroups
ipc-namespace