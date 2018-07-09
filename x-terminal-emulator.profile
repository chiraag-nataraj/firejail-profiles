ignore nodbus
ignore noexec ${HOME}
ignore private-tmp
ignore private-dev
ignore nou2f

include ${HOME}/.config/firejail/common.inc

whitelist /tmp/user/1000
whitelist /tmp/.X11-unix/X0
