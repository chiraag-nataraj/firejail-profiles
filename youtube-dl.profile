ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/Videos
whitelist ${DOWNLOADS}

private-bin python3,python3.6,youtube-dl
private-etc hosts,resolv.conf,ssl

nosound
