ignore net
ignore noexec

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/Dropbox
whitelist ${HOME}/.dropbox
whitelist ${HOME}/.dropbox-dist

private-bin dropbox,python,python2,sh,readlink,dirname
