include /etc/firejail/globals.local

blacklist /usr/local/bin
blacklist /boot
blacklist /media
blacklist /mnt
blacklist /opt

whitelist ${DOWNLOADS}
whitelist ${HOME}/.local/share/torbrowser
whitelist ${HOME}/.config/torbrowser
whitelist ${HOME}/.cache/torbrowser

private-bin bash,grep,sed,tail,torbrowser-launcher,python,env,gpg,id,readlink,dirname,test,mkdir,ln,sed,cp,rm,zenity,kdialog,xmessage,gxmessage,getconf,file,expr
whitelist /dev/dri
whitelist /dev/full
whitelist /dev/null
whitelist /dev/ptmx
whitelist /dev/pts
whitelist /dev/random
whitelist /dev/shm
whitelist /dev/snd
whitelist /dev/tty
whitelist /dev/urandom
whitelist /dev/video0
whitelist /dev/zero
private-etc X11,alternatives,pulse,resolv.conf,fonts,ssl
private-tmp

noexec /tmp

shell none
seccomp
noroot
caps.drop all