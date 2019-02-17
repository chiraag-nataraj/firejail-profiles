ignore net none
ignore memory-deny-write-execute
ignore noroot
ignore seccomp
ignore seccomp.block-secondary
ignore nonewprivs
ignore caps.drop all

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/opera
whitelist ${DOWNLOADS}

private-bin opera

blacklist /usr/share/fonts/truetype/unifont
