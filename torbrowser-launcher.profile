ignore net
ignore memory-deny-write-execute
ignore noexec ${HOME}

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.local/share/torbrowser
mkdir ${HOME}/.config/torbrowser

whitelist ${DOWNLOADS}
whitelist ${HOME}/.local/share/torbrowser
whitelist ${HOME}/.config/torbrowser
whitelist ${HOME}/.cache/torbrowser

private-bin bash,grep,sed,tail,torbrowser-launcher,python2,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,zenity,kdialog,xmessage,gxmessage,getconf,file,expr
private-etc X11,alternatives,pulse,resolv.conf,fonts,ssl
