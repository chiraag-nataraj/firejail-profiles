ignore net

include ${HOME}/.config/firejail/common.inc
include ${HOME}/.config/firejail/noexec-home.inc
include ${HOME}/.config/firejail/noexec-tmp.inc

mkdir ${HOME}/.local/share/gradio

whitelist ${HOME}/.local/share/gradio

private-bin gradio
