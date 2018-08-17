include ${HOME}/.config/firejail/common.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/Documents

private-bin mupdf,sh,tempfile,rm,expr
private-etc alternatives,X11,fonts

whitelist /usr/share/icons
whitelist /usr/share/themes
whitelist /usr/share/fonts
