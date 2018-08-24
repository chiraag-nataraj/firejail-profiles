include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/inkscape

whitelist ${HOME}/.config/inkscape
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes

whitelist ${DOWNLOADS}
whitelist ${PICTURES}

private-bin inkscape
private-etc fonts
