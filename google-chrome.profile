ignore caps.drop

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist /opt/google

whitelist ${HOME}/.config/google-chrome
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.config/google-googletalkplugin/

whitelist ${DOWNLOADS}
whitelist ${HOME}/PDF

private-bin google-chrome,google-chrome-stable,bash,readlink,dirname,cat
private-etc fonts,alternatives,X11,pulse,resolv.conf,localtime

# whitelist /dev/dri
# whitelist /dev/full
# whitelist /dev/null
# whitelist /dev/ptmx
# whitelist /dev/pts
# whitelist /dev/random
# whitelist /dev/shm
# whitelist /dev/snd
# whitelist /dev/tty
# whitelist /dev/urandom
# whitelist /dev/video0
# whitelist /dev/zero

caps.keep sys_chroot,sys_admin