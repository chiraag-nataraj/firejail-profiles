include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.scribus/
mkfile ${HOME}/.config/Trolltech.conf

whitelist ${DOWNLOADS}
whitelist ${DOCUMENTS}
whitelist ${HOME}/.scribus/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.config/Trolltech.conf

private-bin scribus,gs
