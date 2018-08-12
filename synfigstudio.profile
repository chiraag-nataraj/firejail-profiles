include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.synfig

whitelist ${DOWNLOADS}
whitelist ${HOME}/.synfig

private-bin synfigstudio
private-etc fonts,X11,synfig,synfig_modules.cfg
