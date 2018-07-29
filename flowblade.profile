include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.flowblade
mkdir ${HOME}/.config/flowblade

whitelist ${HOME}/.flowblade
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.config/flowblade

whitelist ${DOWNLOADS}
whitelist ${HOME}/Videos

private-bin python,flowblade
private-etc pulse,fonts,alternatives,X11
