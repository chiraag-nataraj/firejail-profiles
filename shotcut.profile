include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/Meltytech

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos
whitelist ${HOME}/.config/Meltytech

private-bin shotcut,melt,qmelt,nice
private-etc X11,alternatives,pulse,fonts
