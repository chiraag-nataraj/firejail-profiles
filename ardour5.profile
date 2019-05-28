ignore nodbus
ignore nosound

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/ardour4
mkdir ${HOME}/.config/ardour5

whitelist ${DOWNLOADS}
whitelist ${DOCUMENTS}
whitelist ${HOME}/.config/ardour4
whitelist ${HOME}/.config/ardour5
whitelist ${HOME}/.lv2
whitelist ${HOME}/.vst

private-bin sh,ardour5,ardour5-copy-mixer,ardour5-export,ardour5-fix_bbtppq,grep,sed,ldd,nm,jackd
# private-etc pulse,X11,alternatives,ardour4,ardour5,fonts
