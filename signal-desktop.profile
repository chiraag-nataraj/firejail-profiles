ignore private-opt
ignore nodbus
ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/electron-common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.config/Signal

whitelist ${HOME}/.config/Signal
whitelist ${DOWNLOADS}
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.config/gtk-3.0

private-bin signal-desktop
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf
whitelist /opt/Signal