ignore net none
ignore private-tmp

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/newsboat
whitelist ${HOME}/.local/share/newsboat

whitelist /tmp/user/1000/
whitelist /tmp/.X11-unix/X0
env TMPDIR=/tmp/user/1000/

private-bin newsboat,emacsclient,sh
private-etc alternatives,hosts,nsswitch.conf,resolv.conf,mime.types,mailcap,ssl,newsboat
private-lib terminfo

whitelist /usr/share/locale
