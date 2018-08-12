ignore net

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.aMule

whitelist ${DOWNLOADS}
whitelist ${HOME}/.aMule
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes

private-bin amule
private-etc hosts,fonts,xdg,gtk-3.0,X11,localtime,nsswitch.conf,resolv.conf
