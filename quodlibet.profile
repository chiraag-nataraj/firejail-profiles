ignore net
ignore nodbus

include ${HOME}/.config/firejail/common.inc

mkdir $ {HOME}/.config/quodlibet

whitelist ${MUSIC}
whitelist ${HOME}/.config/quodlibet

private-bin quodlibet