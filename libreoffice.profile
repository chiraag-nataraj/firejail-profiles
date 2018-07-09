include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/Downloads
whitelist ${HOME}/Documents
whitelist ${HOME}/.config/libreoffice
whitelist ${HOME}/.config/gtk-3.0
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.gtkrc.mine
whitelist ${HOME}/.themes

private-bin sh,dash,libreoffice,dirname,grep,uname,ls,sed,pwd,basename,dbus-launch,dbus-send,fcitx-dbus-watcher,fcitx-remote
private-etc libreoffice,fonts,passwd,alternatives,X11

whitelist /tmp/.X11-unix
# Enable document recovery
whitelist /tmp/user/1000
