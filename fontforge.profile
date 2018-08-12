include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/fontforge

whitelist ${HOME}/.config/fontforge
whitelist ${DOWNLOADS}

private-bin fontforge
private-lib gconv,python2.7
