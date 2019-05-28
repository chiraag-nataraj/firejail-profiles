ignore net none
ignore nosound
ignore novideo
ignore no3d
ignore memory-deny-write-execute
# ignore private-tmp
ignore apparmor
ignore noexec ${HOME}

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/discord
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}

private-bin discord

mkdir /tmp/user/1000/discord1000/

whitelist /tmp/.X11-unix
whitelist /tmp/user/1000/discord1000/
env TMPDIR=/tmp/user/1000/discord1000
