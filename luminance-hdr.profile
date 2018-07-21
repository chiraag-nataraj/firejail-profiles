ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/Pictures
whitelist ${HOME}/Downloads
whitelist ${HOME}/.LuminanceHDR
whitelist ${HOME}/.config/Luminance HDR Development Team

private-bin luminance-hdr,luminance-hdr-cli,align_image_stack
private-etc fonts,X11,alternatives
