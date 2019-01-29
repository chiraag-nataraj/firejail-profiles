ignore nodbus
ignore private-tmp
ignore memory-deny-write-execute
ignore noexec ${HOME}
ignore blacklist /usr/local/bin

include ${HOME}/.config/firejail/common.inc

whitelist /tmp/user/1000
whitelist /tmp/.X11-unix/

writable-run-user
keep-dev-shm
