include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents/
whitelist ${HOME}/.scribus/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.config/Trolltech.conf

private-bin scribus,gs
