ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/qpdfview

private-etc fonts,X11,alternatives
private-bin qpdfview
