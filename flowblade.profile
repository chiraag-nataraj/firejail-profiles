include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.flowblade
mkdir ${HOME}/.config/flowblade

whitelist ${HOME}/.flowblade
whitelist ${HOME}/.themes
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.config/flowblade

whitelist ${DOWNLOADS}
whitelist ${VIDEOS}

private-bin python,flowblade
private-etc pulse,fonts,alternatives,X11
