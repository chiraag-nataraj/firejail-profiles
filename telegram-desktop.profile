ignore net
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.local/share/TelegramDesktop

whitelist ${HOME}/.local/share/TelegramDesktop
whitelist ${DOWNLOADS}
whitelist ${HOME}/.themes
whitelist ${HOME}/.gtkrc-2.0

private-lib pulseaudio,libpulse.so.0
private-bin telegram-desktop
private-etc hosts,fonts,xdg,resolv.conf,X11,pulse,alternatives,localtime,nsswitch.conf
