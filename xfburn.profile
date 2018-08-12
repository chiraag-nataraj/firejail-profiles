include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/xfburn

whitelist ${HOME}/.config/xfburn
whitelist ${DOWNLOADS}

private-bin xfburn
