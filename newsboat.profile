ignore net none
ignore private-tmp
ignore blacklist /usr/local/bin

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.newsboat

whitelist /tmp/user/1000/
env TMPDIR=/tmp/user/1000/
