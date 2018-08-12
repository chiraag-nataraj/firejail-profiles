ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/qpdfview

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/qpdfview

private-etc fonts,X11,alternatives
private-bin qpdfview
