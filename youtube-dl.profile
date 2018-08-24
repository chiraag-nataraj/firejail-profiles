ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

whitelist ${VIDEOS}
whitelist ${DOWNLOADS}

private-bin python3,python3.6,youtube-dl,ffmpeg
private-etc hosts,resolv.conf,ssl

nosound
