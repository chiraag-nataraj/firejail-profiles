# Contributed by triceratops1
# Rewritten by chiraag-nataraj

ignore private-opt emp
ignore memory-deny-write-execute

include ${HOME}/.config/firejail/common.inc

whitelist ${HOME}/.Natron
whitelist ${HOME}/.cache/INRIA/Natron/
whitelist ${HOME}/.config/INRIA/
whitelist ${HOME}/.gtkrc-2.0
whitelist ${HOME}/.themes
whitelist ${DOWNLOADS}
whitelist ${VIDEOS}

whitelist /opt/natron

private-bin bash,dirname,uname,grep
private-etc fonts,X11,pulse,alternatives,passwd
