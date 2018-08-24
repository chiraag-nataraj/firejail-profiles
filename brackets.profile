ignore private-opt
ignore noroot
ignore seccomp
ignore seccomp.block-secondary
ignore nonewprivs
ignore caps.drop
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/Brackets

whitelist ${HOME}/.config/Brackets
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}
whitelist ${DOCUMENTS}

whitelist /opt/brackets/
whitelist /opt/google/

private-bin bash,brackets,readlink,dirname,google-chrome,cat
