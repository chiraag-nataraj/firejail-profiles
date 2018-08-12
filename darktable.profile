include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/darktable
mkdir ${HOME}/.cache/darktable

whitelist ${DOWNLOADS}
whitelist ${HOME}/Pictures
whitelist ${HOME}/.config/darktable
whitelist ${HOME}/.cache/darktable

private-bin darktable
private-etc fonts,X11,alternatives,OpenCL
