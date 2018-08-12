ignore net
ignore private-dev

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/qemu-vms

whitelist ${DOWNLOADS}
whitelist ${HOME}/qemu-vms
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.themes

private-etc qemu-ifdown,qemu-ifup,fonts,resolv.conf,nsswitch.conf
