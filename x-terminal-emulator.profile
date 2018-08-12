ignore nodbus
ignore private-tmp
ignore private-dev
ignore nou2f
ignore memory-deny-write-execute
ignore noexec ${HOME}

include ${HOME}/.config/firejail/common.inc

whitelist /tmp/user/1000
whitelist /tmp/.X11-unix/
