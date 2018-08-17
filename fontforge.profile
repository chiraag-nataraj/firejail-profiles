include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/fontforge

whitelist ${HOME}/.config/fontforge
whitelist ${DOWNLOADS}

private-bin fontforge
private-lib gconv,python2.7
private-etc fonts,alternatives

whitelist /usr/share/fontforge
whitelist /usr/share/fonts
whitelist /usr/share/icons
whitelist /usr/share/themes
