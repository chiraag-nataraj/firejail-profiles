ignore net none

include ${HOME}/.config/firejail/common.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/elinks

private-bin elinks
private-lib terminfo
private-etc hosts,mime.types,mailcap,elinks,xdg,alternatives,localtime,nsswitch.conf,resolv.conf
