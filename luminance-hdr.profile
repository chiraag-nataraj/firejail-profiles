ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.LuminanceHDR
mkdir ${HOME}/.config/Luminance HDR Development Team

whitelist ${PICTURES}
whitelist ${DOWNLOADS}
whitelist ${HOME}/.LuminanceHDR
whitelist ${HOME}/.config/Luminance HDR Development Team

private-bin luminance-hdr,luminance-hdr-cli,align_image_stack
private-etc fonts,X11,alternatives
