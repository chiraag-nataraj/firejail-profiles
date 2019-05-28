ignore memory-deny-write-execute
ignore no3d

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/Dharkael

whitelist ${PICTURES}
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/Dharkael

private-bin flameshot
private-lib
private-etc alternatives,fonts
