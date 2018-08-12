ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/blender

whitelist ${HOME}/.config/blender
whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

private-bin blender
private-etc pulse,fonts,alternatives
