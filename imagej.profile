include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.imagej

whitelist ${HOME}/.imagej
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${PICTURES}
whitelist ${DOWNLOADS}

private-bin imagej,bash,grep,sort,tail,tr,cut,whoami,hostname,uname,mkdir,ls,touch,free,awk,update-java-alternatives,basename,xprop,rm,ln
# private-etc passwd,alternatives,hosts,fonts,X11
