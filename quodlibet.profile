ignore net
ignore nodbus

notv
novideo

include ${HOME}/.config/firejail/common.inc

mkdir $ {HOME}/.config/quodlibet

whitelist ${MUSIC}
whitelist ${HOME}/.config/quodlibet

private-bin quodlibet