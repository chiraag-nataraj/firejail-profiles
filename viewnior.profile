include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/viewnior

whitelist ${DOWNLOADS}
whitelist ${PICTURES}
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/viewnior

private-bin viewnior
private-etc fonts
