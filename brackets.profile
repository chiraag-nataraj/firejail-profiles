ignore private-opt
ignore noroot
ignore seccomp
ignore seccomp.block-secondary
ignore nonewprivs
ignore caps.drop
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.config/Brackets
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents

whitelist /opt/brackets/
whitelist /opt/google/

private-bin bash,brackets,readlink,dirname,google-chrome,cat
