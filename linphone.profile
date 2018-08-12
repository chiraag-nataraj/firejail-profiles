ignore net

include ${HOME}/.config/firejail/common.inc

mkfile ${HOME}/.linphonerc
mkfile ${HOME}/.linphone-history.db

whitelist ${HOME}/.linphonerc
whitelist ${HOME}/.linphone-history.db
whitelist ${DOWNLOADS}
whitelist ${HOME}/.gtkrc-2.0
