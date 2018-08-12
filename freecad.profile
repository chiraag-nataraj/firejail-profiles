include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/FreeCAD

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/FreeCAD
whitelist ${HOME}/Documents

private-bin freecad,freecadcmd
private-etc fonts,passwd,alternatives,X11
