include /etc/firejail/globals.local

private-bin rocketchat
private-dev
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf

private-tmp

whitelist ${HOME}/.config/Rocket.Chat+
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}

shell none
seccomp
caps.drop all