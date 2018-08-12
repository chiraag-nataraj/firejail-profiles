include ${HOME}/.config/firejail/common.inc

mkfile ${HOME}/.lmmsrc.xml
mkdir ${HOME}/lmms

whitelist ${DOWNLOADS}
whitelist ${HOME}/Music
whitelist ${HOME}/.lmmsrc.xml
whitelist ${HOME}/lmms

private-bin lmms
private-etc fonts,pulse
