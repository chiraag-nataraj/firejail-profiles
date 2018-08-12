ignore caps.drop
ignore private-dev

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/google-chrome

whitelist ${HOME}/.config/google-chrome
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0

whitelist ${DOWNLOADS}
whitelist ${HOME}/PDF

private-bin google-chrome,google-chrome-stable,bash,readlink,dirname,cat
private-etc fonts,alternatives,X11,pulse,resolv.conf,localtime

whitelist /opt/google

caps.keep sys_chroot,sys_admin
