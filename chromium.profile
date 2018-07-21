ignore noroot
ignore seccomp
ignore seccomp.block-secondary
ignore nonewprivs
ignore caps.drop
ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

whitelist ${HOME}/.config/chromium
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0

whitelist ${DOWNLOADS}
whitelist ${HOME}/PDF

# private-bin seems to only work with firejail /usr/lib/chromium/chromium on
# Debian... Kept it enabled since other platforms may be different
private-bin chromium,bash,readlink,dirname,cat,uname,mktemp,sed,man,grep,expr
private-etc fonts,alternatives,X11,pulse,resolv.conf,localtime,chromium.d

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
