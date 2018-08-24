ignore nodbus

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/geany

whitelist ${HOME}/.config/geany
whitelist ${DOCUMENTS}
