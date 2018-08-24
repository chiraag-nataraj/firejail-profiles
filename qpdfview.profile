ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/qpdfview

whitelist ${DOWNLOADS}
whitelist ${DOCUMENTS}
whitelist ${HOME}/.config/qpdfview

private-etc fonts,X11,alternatives
private-bin qpdfview

whitelist /usr/share/qpdfview
whitelist /usr/share/icons
whitelist /usr/share/themes
whitelist /usr/share/qt5
whitelist /usr/share/qtchooser
whitelist /usr/share/fonts
whitelist /usr/share/X11
