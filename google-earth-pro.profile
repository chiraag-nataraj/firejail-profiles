ignore net
ignore memory-deny-write-execute
ignore private-opt

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.config/Google
mkdir ${HOME}/.googleearth

whitelist ${HOME}/.config/Google
whitelist ${HOME}/.googleearth

private-bin google-earth-pro,sh,grep,sed,ls,dirname
private-etc fonts,resolv.conf,X11,alternatives,pulse,ssl

whitelist /opt/google/earth
