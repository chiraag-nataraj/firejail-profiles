ignore net
ignore nodbus
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.local/share/akregator/

whitelist ${HOME}/.config/
whitelist ${HOME}/.local/share/akregator/

private-bin akregator,akregatorstorageexporter,dbus-launch,kdeinit5,kshell5,kdeinit5_shutdown,kdeinit5_wrapper,kdeinit4,kshell4,kdeinit4_shutdown,kdeinit4_wrapper
private-etc fonts,alternatives,X11,passwd
