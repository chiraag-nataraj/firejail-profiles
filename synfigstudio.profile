include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.synfig

whitelist ${DOWNLOADS}
whitelist ${HOME}/.synfig

private-bin synfigstudio
private-etc fonts,X11,synfig,synfig_modules.cfg
