ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.config/mpv
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}
whitelist ${MUSIC}
whitelist ${HOME}/POD
