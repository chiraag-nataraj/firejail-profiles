include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/ardour4
whitelist ${HOME}/.config/ardour5
whitelist ${HOME}/.lv2
whitelist ${HOME}/.vst

private-bin sh,ardour5,ardour5-copy-mixer,ardour5-export,ardour5-fix_bbtppq,grep,sed,ldd,nm
private-etc pulse,X11,alternatives,ardour4,ardour5,fonts
