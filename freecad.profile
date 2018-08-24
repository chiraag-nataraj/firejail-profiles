include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/FreeCAD

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/FreeCAD
whitelist ${DOCUMENTS}

private-bin freecad,freecadcmd
private-etc fonts,passwd,alternatives,X11
