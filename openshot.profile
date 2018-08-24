ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.openshot_qt/

whitelist ${HOME}/.openshot_qt/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}

private-bin openshot-qt,python3
