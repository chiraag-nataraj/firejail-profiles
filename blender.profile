ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/blender

whitelist ${HOME}/.config/blender
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}

private-bin blender
private-etc pulse,fonts,alternatives

whitelist /usr/share/blender
whitelist /usr/share/fonts
whitelist /usr/share/icons
whitelist /usr/share/themes
whitelist /usr/share/ffmpeg
