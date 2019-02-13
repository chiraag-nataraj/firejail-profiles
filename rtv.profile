ignore net none
ignore memory-deny-write-execute
ignore private-tmp
ignore noexec ${HOME}

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/rtv
whitelist ${HOME}/.local/share/rtv
whitelist ${HOME}/.local/bin/rtv_em
whitelist ${HOME}/.local/bin/emacshelper

whitelist /tmp/user/1000/emacs1000/

private-bin rtv,python3,xdg-settings,sh,less,which,xclip,emacsclient,env,bash,cp,basename,mv
private-lib python3,python3.7,libncursesw.so.6,terminfo,libgcc_s.so.1,libssl.so.1.1,x86_64-linux-gnu/sasl2,nss,libcrypt-2.27.so,libcrypto.so.1.1

env RTV_EDITOR='/home/chiraag/.local/bin/rtv_em'
