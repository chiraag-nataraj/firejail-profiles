# Originally contributed by triceratops1
# Rewritten by chiraag-nataraj

ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

whitelist ${DOWNLOADS}
whitelist ${VIDEOS}

private-bin zart,ffmpeg,melt,ffprobe,ffplay
private-etc fonts,X11
