ignore net
ignore memory-deny-write-execute
ignore noexec ${HOME}

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/Dropbox
mkdir ${HOME}/.dropbox
mkdir ${HOME}/.dropbox-dist

whitelist ${HOME}/Dropbox
whitelist ${HOME}/.dropbox
whitelist ${HOME}/.dropbox-dist

private-bin dropbox,python,python2,sh,readlink,dirname
