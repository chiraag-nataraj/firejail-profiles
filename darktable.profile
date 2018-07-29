include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.config/darktable
mkdir ${HOME}/.cache/darktable

whitelist ${DOWNLOADS}
whitelist ${HOME}/Pictures
whitelist ${HOME}/.config/darktable
whitelist ${HOME}/.cache/darktable

private-bin darktable
private-etc fonts,X11,alternatives,OpenCL
