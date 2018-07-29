ignore net

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.local/share/Ricochet

whitelist ${DOWNLOADS}
whitelist ${HOME}/.local/share/Ricochet

private-bin ricochet,tor
private-etc fonts,tor,X11,alternatives
