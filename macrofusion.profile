include /etc/firejail/globals.local

whitelist ${PICTURES}
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/mfusion

private-bin python3,macrofusion,env,enfuse,exiftool,align_image_stack
private-etc fonts
private-dev
private-tmp

shell none
seccomp
caps.drop all
net none
ipc-namespace
noroot
nogroups
nonewprivs
