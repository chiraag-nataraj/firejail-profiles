ignore memory-deny-write-execute

# include ${HOME}/.config/firejail/mpv-relaxed.inc
include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/mpv
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}
whitelist ${MUSIC}

private-bin mpv
private-etc mpv,alternatives,fonts

whitelist /usr/share/X11
whitelist /usr/share/fonts
