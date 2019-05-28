ignore no3d

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/darktable
mkdir ${HOME}/.cache/darktable

whitelist ${DOWNLOADS}
whitelist ${PICTURES}
whitelist ${HOME}/.config/darktable
whitelist ${HOME}/.cache/darktable

private-bin darktable
private-etc fonts,X11,alternatives,OpenCL

whitelist /usr/share/darktable
whitelist /usr/share/fonts
whitelist /usr/share/icons
whitelist /usr/share/themes
whitelist /usr/share/mime
whitelist /usr/share/lensfun
whitelist /usr/share/locale
whitelist /usr/share/glib-2.0
