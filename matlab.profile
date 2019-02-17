ignore private-opt emp
ignore memory-deny-write-execute
ignore machine-id
ignore net none
ignore noexec /tmp

include ${HOME}/.config/firejail/common.inc

whitelist ${DOCUMENTS}
whitelist ${DOWNLOADS}
whitelist ${HOME}/.matlab
whitelist ${HOME}/.config/matlab

whitelist /opt/MATLAB
