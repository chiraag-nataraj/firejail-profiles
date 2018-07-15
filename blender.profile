include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.config/blender

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

private-bin blender
private-etc pulse,fonts,alternatives
