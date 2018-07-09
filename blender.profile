include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/blender

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

private-bin blender
private-etc pulse,fonts,alternatives
