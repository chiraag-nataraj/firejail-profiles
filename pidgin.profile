whitelist ${DOWNLOADS}

whitelist ${HOME}/.purple
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${HOME}/.pulse
whitelist ${HOME}/.config/pulse

private-bin pidgin
private-dev
private-etc X11,alternatives,resolv.conf,fonts,pulse
private-tmp

noexec ${HOME}
noexec /tmp

shell none
caps.drop all
seccomp
noroot
nogroups
ipc-namespace