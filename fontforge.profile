include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.config/fontforge

whitelist ${HOME}/.config/fontforge
whitelist ${DOWNLOADS}

private-bin fontforge
private-lib gconv,python2.7
