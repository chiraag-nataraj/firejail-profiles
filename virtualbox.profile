ignore seccomp
ignore caps.drop
ignore apparmor
ignore noroot
ignore nonewprivs
ignore private-dev
ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/VirtualBox_VMs
mkdir ${HOME}/.config/VirtualBox
mkfile ${HOME}/.config/Trolltech.conf

whitelist ${DOWNLOADS}
whitelist ${HOME}/.local/share/vms/vbox
whitelist ${HOME}/.config/VirtualBox
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.config/Trolltech.conf

whitelist /dev/vboxdrv
whitelist /dev/vboxdrvu
whitelist /dev/vboxnetctl
whitelist /dev/null
whitelist /dev/dri
