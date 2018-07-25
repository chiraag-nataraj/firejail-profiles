ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${PICTURES}
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/Dharkael

private-bin flameshot
private-lib
private-etc alternatives,fonts
