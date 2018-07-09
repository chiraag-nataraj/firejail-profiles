ignore net

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/Videos
whitelist ${DOWNLOADS}

private-bin python3,python3.6,youtube-dl
private-etc hosts,resolv.conf,ssl

nosound
