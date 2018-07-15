include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/FreeCAD
whitelist ${HOME}/Documents

private-bin freecad,freecadcmd
private-etc fonts,passwd,alternatives,X11
