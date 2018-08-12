ignore net none
ignore private-tmp

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.newsboat

whitelist /tmp/user/1000/
whitelist /tmp/.X11-unix/X0
env TMPDIR=/tmp/user/1000/

private-bin newsboat,sensible-browser,firefox,emacsclient,sh,which
private-etc alternatives,hosts,nsswitch.conf,resolv.conf,mime.types,mailcap,ssl,newsboat
