ignore net

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.config/gerbera
whitelist ${HOME}/Music

private-bin gerbera
private-etc magic,magic.mime
private-lib

nosound
x11 none
