ignore private-tmp
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/libreoffice

whitelist ${DOWNLOADS}
whitelist ${DOCUMENTS}
whitelist ${HOME}/.config/libreoffice
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes

private-bin sh,dash,libreoffice,dirname,grep,uname,ls,sed,pwd,basename,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote
private-etc libreoffice,fonts,passwd,alternatives,X11

whitelist /usr/share/libreoffice
whitelist /usr/share/icons
whitelist /usr/share/themes
whitelist /usr/share/fonts

whitelist /tmp/.X11-unix
# Enable document recovery
whitelist /tmp/user/1000
