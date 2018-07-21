ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.openshot_qt/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/Downloads/
whitelist ${HOME}/Videos/

private-bin openshot-qt,python3
