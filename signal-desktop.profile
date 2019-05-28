ignore private-opt emp
ignore nodbus
ignore nosound
ignore no3d
ignore net
ignore memory-deny-write-execute
ignore noexec /tmp

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/electron-common.inc

mkdir ${HOME}/.config/Signal

whitelist ${HOME}/.config/Signal
whitelist ${DOWNLOADS}
whitelist ${HOME}/.local/share/themes
whitelist ${HOME}/.config/gtk-2.0
whitelist ${HOME}/.config/gtk-3.0

private-bin signal-desktop
# private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf
private-opt Signal
