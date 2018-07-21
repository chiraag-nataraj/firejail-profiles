ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/Dropbox
whitelist ${HOME}/.dropbox
whitelist ${HOME}/.dropbox-dist

private-bin dropbox,python,python2,sh,readlink,dirname
