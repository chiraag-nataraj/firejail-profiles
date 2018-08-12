ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/mpv
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}
whitelist ${MUSIC}
whitelist ${HOME}/POD

private-bin mpv,python3,python3.6,youtube-dl,ffmpeg
