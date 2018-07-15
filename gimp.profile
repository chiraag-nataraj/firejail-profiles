include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.config/GIMP
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.fonts

whitelist ${DOWNLOADS}
whitelist ${HOME}/Pictures

private-bin gimp,gimp-2.10,gimp-console,gimp-console-2.10,python2.7
private-etc gimp,fonts,alternatives
