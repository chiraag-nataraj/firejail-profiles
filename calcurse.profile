ignore machine-id

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.config/calcurse

private-bin calcurse,sh,less
private-lib terminfo,libgcc_s.so.1
private-etc localtime

quiet
