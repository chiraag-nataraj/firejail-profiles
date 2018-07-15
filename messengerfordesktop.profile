ignore private-opt
ignore net

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/electron-common.inc
include ${HOME}/.config/firejail/noexec-home.inc

whitelist ${HOME}/.config/Messenger for Desktop
whitelist ${DOWNLOADS}
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0

private-bin messengerfordesktop
whitelist /opt/messengerfordesktop
private-etc hosts,fonts,xdg,X11,pulse,alternatives,localtime,nsswitch.conf
