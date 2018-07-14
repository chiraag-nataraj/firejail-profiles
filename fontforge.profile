include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/fontforge
whitelist ${DOWNLOADS}

private-bin fontforge
private-lib gconv,python2.7
