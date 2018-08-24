ignore net

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/gerbera

whitelist ${HOME}/.config/gerbera
whitelist ${MUSIC}

private-bin gerbera
private-etc magic,magic.mime
private-lib

nosound
x11 none
