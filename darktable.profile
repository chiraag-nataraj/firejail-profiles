include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/Downloads
whitelist ${HOME}/Pictures
whitelist ${HOME}/.config/darktable
whitelist ${HOME}/.cache/darktable

private-bin darktable
private-etc fonts,X11,alternatives,OpenCL
