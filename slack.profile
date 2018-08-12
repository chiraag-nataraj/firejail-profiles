ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/electron-common.inc

mkdir ${HOME}/.config/Slack

whitelist ${HOME}/.config/Slack
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}

private-bin slack
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf
