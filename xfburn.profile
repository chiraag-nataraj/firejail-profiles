include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.config/xfburn

whitelist ${HOME}/.config/xfburn
whitelist ${DOWNLOADS}

private-bin xfburn
