ignore net

include ${HOME}/.config/firejail/common.inc

mkdir ${HOME}/.local/share/gradio

whitelist ${HOME}/.local/share/gradio

private-bin gradio
