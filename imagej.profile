blacklist /usr/local/bin
blacklist /usr/local/sbin

whitelist ${HOME}/.imagej
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes
whitelist ${HOME}/Pictures
whitelist ${DOWNLOADS}

private-bin imagej,bash,grep,sort,tail,tr,cut,whoami,hostname,uname,mkdir,ls,touch,free,awk,update-java-alternatives,basename,xprop,rm,ln
private-dev
# private-etc passwd,alternatives,hosts,fonts,X11
private-tmp

net none
seccomp
caps.drop all
noroot
nonewprivs
nogroups
ipc-namespace