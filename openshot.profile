ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.openshot_qt/

whitelist ${HOME}/.openshot_qt/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos/

private-bin openshot-qt,python3
