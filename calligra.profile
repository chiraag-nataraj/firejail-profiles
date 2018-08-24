ignore nodbus
include ${HOME}/.config/firejail/common.inc

mkfile ${HOME}/.config/Trolltech.conf

whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/Trolltech.conf
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.kde
whitelist ${HOME}/.themes
whitelist ${DOCUMENTS}

private-bin calligra,calligraauthor,calligraconverter,calligraflow,calligraplan,calligraplanwork,calligrasheets,calligrastage,calligrawords,dbus-launch
private-etc fonts,passwd,alternatives,X11
